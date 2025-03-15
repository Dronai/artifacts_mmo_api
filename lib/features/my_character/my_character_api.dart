import 'dart:convert';
import 'dart:io';

import 'package:artifacts_mmo_api/features/characters/models/character_schema.dart';
import 'package:artifacts_mmo_api/features/my_character/models/character_rest_data_schema.dart';
import 'package:artifacts_mmo_api/features/my_character/models/move/character_movement_data_schema.dart';
import 'package:artifacts_mmo_api/features/my_character/models/fight/character_fight_data_schema.dart';
import 'package:artifacts_mmo_api/features/my_character/responses/character_fight_response_schema.dart';
import 'package:artifacts_mmo_api/features/my_character/responses/character_movement_response_schema.dart';
import 'package:artifacts_mmo_api/features/my_character/responses/character_rest_response_schema.dart';
import 'package:artifacts_mmo_api/features/my_character/responses/my_characters_list_schema.dart';
import 'package:artifacts_mmo_api/http_method.dart';

import '../../api_client.dart';
import '../../api_exception.dart';
import 'models/move/destination_schema.dart';

class MyCharacterApi {
  MyCharacterApi([ApiClient? apiClient])
    : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<List<CharacterSchema>> getMyCharacters() async {
    final String path = r'/my/characters';
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

    if (response.statusCode >= HttpStatus.badRequest) {
      throw handleArtifactsError(response.statusCode);
    }

    final responseBody = await apiClient.decodeBodyBytes(response);

    if (responseBody.isNotEmpty) {
      return MyCharactersListSchema.fromJson(jsonDecode(responseBody)).data;
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }

  Future<CharacterMovementDataSchema> actionMove(
    String characterName,
    DestinationSchema destination,
  ) async {
    final String path = r'/my/{name}/action/move'.replaceAll(
      '{name}',
      characterName,
    );
    Map<String, String>? queryParams;
    Map<String, String> headers = <String, String>{};

    final response = await apiClient.invokeAPI(
      HttpMethod.post,
      path,
      headers,
      destination,
      queryParams,
    );

    if (response.statusCode == 404) {
      throw ApiException(response.statusCode, "Map not found.");
    } else if (response.statusCode >= HttpStatus.badRequest) {
      throw handleArtifactsError(response.statusCode);
    }

    final responseBody = await apiClient.decodeBodyBytes(response);

    if (responseBody.isNotEmpty) {
      return CharacterMovementResponseSchema.fromJson(
        jsonDecode(responseBody),
      ).data;
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }

  Future<CharacterFightDataSchema> actionFight(String characterName) async {
    final String path = r'/my/{name}/action/fight'.replaceAll(
      '{name}',
      characterName,
    );
    Object? body;
    Map<String, String>? queryParams;
    Map<String, String> headers = <String, String>{};

    final response = await apiClient.invokeAPI(
      HttpMethod.post,
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
      return CharacterFightResponseSchema.fromJson(
        jsonDecode(responseBody),
      ).data;
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }

  Future<CharacterRestDataSchema> actionRest(String characterName) async {
    final String path = r'/my/{name}/action/rest'.replaceAll(
      '{name}',
      characterName,
    );
    Object? body;
    Map<String, String>? queryParams;
    Map<String, String> headers = <String, String>{};

    final response = await apiClient.invokeAPI(
      HttpMethod.post,
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
      return CharacterRestResponseSchema.fromJson(
        jsonDecode(responseBody),
      ).data;
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }
}
