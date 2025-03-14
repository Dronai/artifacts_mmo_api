import 'package:artifacts_mmo_api/auth/authentication.dart';

class HttpBearerAuth implements Authentication {
  HttpBearerAuth({required this.accessToken});

  final String accessToken;

  @override
  Future<void> applyAuthentication(Map<String, String> headerParams) async {
    if (accessToken.isNotEmpty) {
      headerParams['Authorization'] = 'Bearer $accessToken';
    }
  }
}
