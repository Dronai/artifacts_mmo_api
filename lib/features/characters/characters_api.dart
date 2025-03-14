import 'dart:convert';
import 'dart:io';

import 'package:artifacts_mmo_api/features/characters/models/add_character_schema.dart';
import 'package:artifacts_mmo_api/features/characters/models/character_schema.dart';
import 'package:artifacts_mmo_api/features/characters/models/delete_character_schema.dart';
import 'package:artifacts_mmo_api/features/characters/responses/character_response_schema.dart';
import 'package:artifacts_mmo_api/http_method.dart';

import '../../api_client.dart';
import '../../api_exception.dart';

class CharactersApi {
  CharactersApi([ApiClient? apiClient])
    : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<CharacterSchema> createCharacter(
    AddCharacterSchema newCharacter,
  ) async {
    final String path = r'/characters/create';
    Map<String, String>? queryParams;
    Map<String, String> headers = <String, String>{};

    final response = await apiClient.invokeAPI(
      HttpMethod.post,
      path,
      headers,
      newCharacter,
      queryParams,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw handleArtifactsError(response.statusCode);
    }

    final responseBody = await apiClient.decodeBodyBytes(response);

    if (responseBody.isNotEmpty) {
      return CharacterResponseSchema.fromJson(jsonDecode(responseBody)).data;
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }

  Future<CharacterSchema> getCharacter(String characterName) async {
    final String path = r'/characters/{name}'.replaceAll(
      '{name}',
      characterName,
    );
    Object? body;
    Map<String, String>? queryParams;
    Map<String, String> headers = <String, String>{};

    final response = await apiClient.invokeAPI(
      HttpMethod.get,
      path,
      headers,
      body,
      queryParams,
    );

    if (response.statusCode == 404) {
      throw ApiException(response.statusCode, "Character not found.");
    } else if (response.statusCode >= HttpStatus.badRequest) {
      throw handleArtifactsError(response.statusCode);
    }

    final responseBody = await apiClient.decodeBodyBytes(response);

    if (responseBody.isNotEmpty) {
      return CharacterResponseSchema.fromJson(jsonDecode(responseBody)).data;
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }

  Future<CharacterSchema> deleteCharacter(String characterName) async {
    final String path = r'/characters/delete';

    Map<String, String>? queryParams;
    Map<String, String> headers = <String, String>{};

    final response = await apiClient.invokeAPI(
      HttpMethod.post,
      path,
      headers,
      DeleteCharacterSchema(name: characterName),
      queryParams,
    );

    if (response.statusCode >= HttpStatus.badRequest) {
      throw handleArtifactsError(response.statusCode);
    }

    final responseBody = await apiClient.decodeBodyBytes(response);

    if (responseBody.isNotEmpty) {
      return CharacterResponseSchema.fromJson(jsonDecode(responseBody)).data;
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }
}
