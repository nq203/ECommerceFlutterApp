import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpHelper {
  static const String baseUrl = '';

  static Future<Map<String, dynamic>> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("fail");
    }
  }

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(Uri.parse('$baseUrl/$endpoint'),
        headers: {'Content-type': 'application/json'}, body: json.encode(data));
    return _handleResponse(response);
  }
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(Uri.parse('$baseUrl/$endpoint'),
        headers: {'Content-type': 'application/json'}, body: json.encode(data));
    return _handleResponse(response);
  }
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$baseUrl/$endpoint'));
    return _handleResponse(response);
  }
}
