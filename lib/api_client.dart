import 'dart:convert';
import 'dart:io';

import 'package:artifacts_mmo_api/api_exception.dart';
import 'package:artifacts_mmo_api/http_method.dart';
import 'package:http/http.dart';

import 'auth/authentication.dart';

var defaultApiClient = ApiClient();

class ApiClient {
  ApiClient({this.baseUrl = 'api.artifactsmmo.com', this.authentication}) : _client = Client();

  final String baseUrl;
  final Client _client;
  final Authentication? authentication;

  Future<Response> invokeAPI(
    HttpMethod method,
    String path,
    Map<String, String> headers,
    Object? body,
    Map<String, String>? queryParams,
  ) async {
    try {
      await authentication?.applyAuthentication(headers);
      headers.putIfAbsent("Content-Type", () => "application/json");


      switch (method) {
        case HttpMethod.get:
          return await _client.get(
            Uri.https(baseUrl, path, queryParams),
            headers: headers,
          );
        case HttpMethod.post:
          return await _client.post(
            Uri.https(baseUrl, path, queryParams),
            headers: headers,
            body: jsonEncode(body),
          );
        case HttpMethod.patch:
          return await _client.patch(
            Uri.http(baseUrl, path, queryParams),
            headers: headers,
            body: jsonEncode(body),
          );
        case HttpMethod.delete:
          return await _client.delete(
            Uri.http(baseUrl, path, queryParams),
            headers: headers,
            body: jsonEncode(body),
          );
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.serviceUnavailable,
        "Socket operation failed: $method $path",
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badGateway,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.internalServerError,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }
  }

  Future<String> decodeBodyBytes(Response response) async {
    final contentType = response.headers['content-type'];
    return contentType != null &&
        contentType.toLowerCase().startsWith('application/json')
        ? response.bodyBytes.isEmpty
        ? ''
        : utf8.decode(response.bodyBytes)
        : response.body;
  }
}
