import 'dart:convert';
import 'dart:io';

import 'package:artifacts_mmo_api/api_client.dart';
import 'package:artifacts_mmo_api/api_exception.dart';
import 'package:artifacts_mmo_api/features/monsters/models/data_page_monster_schema.dart';
import 'package:artifacts_mmo_api/features/monsters/models/monster_schema.dart';

import '../../http_method.dart';

class MonstersApi {
  MonstersApi([ApiClient? apiClient])
    : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<DataPageMonsterSchema> getAllMonster(
    String? drop,
    int? minLevel,
    int? maxLevel,
    int? page,
    int? size,
  ) async {
    final String path = r'/monsters';
    Object? body;
    Map<String, String>? queryParams = <String, String>{};
    Map<String, String> headers = <String, String>{};

    if (drop != null) {
      queryParams.putIfAbsent("drop", () => drop);
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
      return DataPageMonsterSchema.fromJson(jsonDecode(responseBody));
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }

  Future<MonsterSchema> getMonster(String code) async {
    final String path = '/monsters/{code}'.replaceAll('{code}', code);
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
      throw ApiException(response.statusCode, "Monster not found.");
    } else if (response.statusCode >= HttpStatus.badRequest) {
      throw handleArtifactsError(response.statusCode);
    }

    final responseBody = await apiClient.decodeBodyBytes(response);

    if (responseBody.isNotEmpty) {
      return MonsterSchema.fromJson(jsonDecode(responseBody));
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }
}
