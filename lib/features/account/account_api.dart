import 'dart:convert';
import 'dart:io';

import 'package:artifacts_mmo_api/features/account/responses/account_characters_response_schema.dart';
import 'package:artifacts_mmo_api/features/characters/models/character_schema.dart';

import '../../api_client.dart';
import '../../api_exception.dart';
import '../../http_method.dart';

class AccountApi {
  AccountApi([ApiClient? apiClient])
    : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<List<CharacterSchema>> getAccountCharacters(String accountName) async {
    final String path = r'/accounts/{account}/characters'.replaceAll(
      '{account}',
      accountName,
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

    if (response.statusCode >= HttpStatus.badRequest) {
      throw handleArtifactsError(response.statusCode);
    }

    final responseBody = await apiClient.decodeBodyBytes(response);

    if (responseBody.isNotEmpty) {
      return AccountCharactersResponseSchema.fromJson(
        jsonDecode(responseBody),
      ).data;
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }
}
