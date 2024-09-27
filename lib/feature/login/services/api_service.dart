import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/user_model.dart';

class ApiService {
  final String baseUrl;

  ApiService({required this.baseUrl});

  Future<User?> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      // Assuming the JWT token is in json['token']
      return User.fromJson(json);
    } else {
      // Handle error responses
      final errorJson = jsonDecode(response.body);
      throw Exception(errorJson['message'] ?? 'Failed to login');
    }
  }

  // Add a method to make authenticated requests
  Future<http.Response> getData(String endpoint, String token) async {
    final response = await http.get(
      Uri.parse('$baseUrl/$endpoint'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    return response;
  }
}
