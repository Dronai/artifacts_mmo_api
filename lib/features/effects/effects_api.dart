import 'dart:convert';
import 'dart:io';

import 'package:artifacts_mmo_api/api_client.dart';
import 'package:artifacts_mmo_api/api_exception.dart';
import 'package:artifacts_mmo_api/features/effects/models/data_page_effect_schema.dart';
import 'package:artifacts_mmo_api/features/items/models/data_page_item_schema.dart';
import 'package:artifacts_mmo_api/http_method.dart';

class EffectsApi {
  EffectsApi([ApiClient? apiClient])
    : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<DataPageEffectSchema> getAllEffects(
    int? page,
    int? size,
  ) async {
    final String path = r'/effects';
    Object? body;
    Map<String, String>? queryParams = <String, String>{};
    Map<String, String> headers = <String, String>{};

    if (page != null) {
      queryParams.putIfAbsent("page", () => page.toString());
    }
    if (size != null) {
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
      return DataPageEffectSchema.fromJson(jsonDecode(responseBody));
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }
}
