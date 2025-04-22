import 'dart:convert';
import 'dart:io';

import 'package:artifacts_mmo_api/api_client.dart';
import 'package:artifacts_mmo_api/api_exception.dart';
import 'package:artifacts_mmo_api/features/items/models/data_page_item_schema.dart';
import 'package:artifacts_mmo_api/http_method.dart';

class ItemsApi {
  ItemsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<DataPageItemSchema> getAllItems(
    String? craftMaterial,
    String? craftSkill,
    String? name,
    String? type,
    int? minLevel,
    int? maxLevel,
    int? page,
    int? size,
  ) async {
    final String path = r'/items';
    Object? body;
    Map<String, String>? queryParams = <String, String>{};
    Map<String, String> headers = <String, String>{};

    if (craftMaterial != null) {
      queryParams.putIfAbsent("craft_material", () => craftMaterial);
    }
    if (craftSkill != null) {
      queryParams.putIfAbsent("craft_skill", () => craftSkill);
    }
    if (name != null) {
      queryParams.putIfAbsent("name", () => name);
    }
    if (type != null) {
      queryParams.putIfAbsent("type", () => type);
    }
    if (minLevel != null) {
      queryParams.putIfAbsent("min_level", () => minLevel.toString());
    }
    if (maxLevel != null) {
      queryParams.putIfAbsent("max_level", () => maxLevel.toString());
    }
    if (page != null) {
      queryParams.putIfAbsent("page", () => minLevel.toString());
    }
    if (size != null) {
      queryParams.putIfAbsent("size", () => maxLevel.toString());
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
      return DataPageItemSchema.fromJson(jsonDecode(responseBody));
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }
}
