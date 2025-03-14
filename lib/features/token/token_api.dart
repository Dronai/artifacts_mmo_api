import 'dart:convert';
import 'dart:io';

import 'package:artifacts_mmo_api/api_client.dart';
import 'package:artifacts_mmo_api/api_exception.dart';
import 'package:artifacts_mmo_api/http_method.dart';
import 'package:artifacts_mmo_api/features/token/token_response_schema.dart';

class TokenApi {
  TokenApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<TokenResponseSchema> generateToken() async {
    final String path = r'token';
    Object? postBody;
    Map<String, String>? queryParams;
    Map<String, String> headers = <String, String>{};

    final response = await apiClient.invokeAPI(
      HttpMethod.post,
      path,
      headers,
      postBody,
      queryParams,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw handleArtifactsError(response.statusCode);
    }

    final responseBody = await apiClient.decodeBodyBytes(response);

    if (responseBody.isNotEmpty) {
      return TokenResponseSchema.fromJson(jsonDecode(responseBody));
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }
}
