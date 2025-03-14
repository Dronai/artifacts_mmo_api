import 'dart:convert';

import 'package:artifacts_mmo_api/auth/authentication.dart';

class HttpBasicAuth implements Authentication {
  HttpBasicAuth({required this.username, required this.password});

  final String username;
  final String password;

  @override
  Future<void> applyAuthentication(Map<String, String> headerParams) async {
    if (username.isNotEmpty && password.isNotEmpty) {
      final credentials = '$username:$password';
      headerParams['Authorization'] =
          'Basic ${base64.encode(utf8.encode(credentials))}';
    }
  }
}
