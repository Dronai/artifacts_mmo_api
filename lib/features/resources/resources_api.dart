import 'dart:convert';
import 'dart:io';

import 'package:artifacts_mmo_api/api_client.dart';
import 'package:artifacts_mmo_api/api_exception.dart';
import 'package:artifacts_mmo_api/features/monsters/models/data_page_monster_schema.dart';
import 'package:artifacts_mmo_api/features/monsters/models/monster_schema.dart';
import 'package:artifacts_mmo_api/features/resources/models/data_page_resource_schema.dart';
import 'package:artifacts_mmo_api/features/resources/models/resource_schema.dart';

import '../../http_method.dart';

class ResourcesApi {
  ResourcesApi([ApiClient? apiClient])
    : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<DataPageResourceSchema> getAllResources(
    String? drop,
    String? skill,
    int? minLevel,
    int? maxLevel,
    int? page,
    int? size,
  ) async {
    final String path = r'/resources';
    Object? body;
    Map<String, String>? queryParams = <String, String>{};
    Map<String, String> headers = <String, String>{};

    if (drop != null) {
      queryParams.putIfAbsent("drop", () => drop);
    }
    if (skill != null) {
      queryParams.putIfAbsent("skill", () => skill);
    }
    if (minLevel != null) {
      queryParams.putIfAbsent("min_level", () => minLevel.toString());
    }
    if (maxLevel != null) {
      queryParams.putIfAbsent("max_level", () => maxLevel.toString());
    }
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
      return DataPageResourceSchema.fromJson(jsonDecode(responseBody));
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }

  Future<ResourceSchema> getResource(String code) async {
    final String path = '/resources/{code}'.replaceAll('{code}', code);
    Object? body;
    Map<String, String>? queryParams = <String, String>{};
    Map<String, String> headers = <String, String>{};

    final response = await apiClient.invokeAPI(
      HttpMethod.get,
      path,
      headers,
      body,
      queryParams,
    );

    if (response.statusCode == 404) {
      throw ApiException(response.statusCode, "Resource not found.");
    } else if (response.statusCode >= HttpStatus.badRequest) {
      throw handleArtifactsError(response.statusCode);
    }

    final responseBody = await apiClient.decodeBodyBytes(response);

    if (responseBody.isNotEmpty) {
      return ResourceSchema.fromJson(jsonDecode(responseBody));
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }
}
