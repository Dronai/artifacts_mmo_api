import '../../api_client.dart';

class MyCharacterApi {
  MyCharacterApi([ApiClient? apiClient])
    : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;
}
