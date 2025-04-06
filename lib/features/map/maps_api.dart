import 'dart:convert';
import 'dart:io';

import 'package:artifacts_mmo_api/api_client.dart';
import 'package:artifacts_mmo_api/features/map/models/data_page_map_schema.dart';

import '../../api_exception.dart';
import '../../http_method.dart';

class MapsApi {
  MapsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<DataPageMapSchema> getAllMaps(
    String? contentCode,
    String? contentType,
    int? page,
    int? size,
  ) async {
    final String path = r'/maps';
    Object? body;
    Map<String, String>? queryParams = <String, String>{};
    Map<String, String> headers = <String, String>{};

    if(contentType != null) {
      queryParams.putIfAbsent("content_type", () => contentType);
    }
    if(contentCode != null) {
      queryParams.putIfAbsent("content_code", () => contentCode);
    }
    if(page != null) {
      queryParams.putIfAbsent("page", () => page.toString());
    }
    if(size != null) {
      queryParams.putIfAbsent("size", () => size.toString());
    }

    final response = await apiClient.invokeAPI(
      HttpMethod.get,
      path,
      headers,
      body,
      queryParams,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw handleArtifactsError(response.statusCode);
    }

    final responseBody = await apiClient.decodeBodyBytes(response);

    if (responseBody.isNotEmpty) {
      return DataPageMapSchema.fromJson(jsonDecode(responseBody));
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }
}
