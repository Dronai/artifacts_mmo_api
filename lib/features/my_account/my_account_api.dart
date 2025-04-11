import 'dart:convert';
import 'dart:io';

import 'package:artifacts_mmo_api/features/my_account/responses/my_account_details_response_schema.dart';

import '../../api_client.dart';
import '../../api_exception.dart';
import '../../http_method.dart';
import 'models/my_account_details_schema.dart';

class MyAccountApi {
  MyAccountApi([ApiClient? apiClient])
    : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  Future<MyAccountDetailsSchema> getMyAccountDetails() async {
    final String path = r'/my/details';
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
      return MyAccountDetailsResponseSchema.fromJson(
        jsonDecode(responseBody),
      ).data;
    } else {
      throw ApiException(response.statusCode, 'Response body is empty');
    }
  }
}
