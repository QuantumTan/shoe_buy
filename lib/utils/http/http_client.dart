import 'dart:convert';
import 'package:http/http.dart' as http;

class SHttpHelper {
  static const String _baseUrl = 'https://api.samplAPI.com';

  static Future<Map<String, dynamic>> get(String endPoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endPoint'));
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> post(
    String endPoint,
    Map<String, dynamic> body,
  ) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endPoint'),
      body: jsonEncode(body),
      headers: {'Content-Type': 'application/json'},
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> put(
    String endPoint,
    Map<String, dynamic> body,
  ) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endPoint'),
      body: jsonEncode(body),
      headers: {'Content-Type': 'application/json'},
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> delete(String endPoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endPoint'));
    return _handleResponse(response);
  }

  // static Future<Map<String, dynamic>> postFormData(
  //   String endPoint,
  //   Map<String, dynamic> fields,
  //   Map<String, String> files,
  // ) async {
  //   var request = http.MultipartRequest(
  //     'POST',
  //     Uri.parse('$_baseUrl/$endPoint'),
  //   );

  //   // Add fields
  //   fields.forEach((key, value) {
  //     request.fields[key] = value.toString();
  //   });

  //   // Add files
  //   for (var entry in files.entries) {
  //     final file = await http.MultipartFile.fromPath(entry.key, entry.value);
  //     request.files.add(file);
  //   }

  //   final streamedResponse = await request.send();
  //   final response = await http.Response.fromStream(streamedResponse);
  //   return _handleResponse(response);
  // }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      if (response.body.isNotEmpty) {
        return json.decode(response.body);
      } else {
        return {'success': true};
      }
    } else {
      try {
        final errorBody = json.decode(response.body);
        throw HttpException(
          message: errorBody['message'] ?? 'Unknown error occurred',
          statusCode: response.statusCode,
          data: errorBody,
        );
      } catch (e) {
        throw HttpException(
          message: 'Failed to process response',
          statusCode: response.statusCode,
          data: {'body': response.body},
        );
      }
    }
  }
}

class HttpException implements Exception {
  final String message;
  final int statusCode;
  final Map<String, dynamic>? data;

  HttpException({required this.message, required this.statusCode, this.data});

  @override
  String toString() => 'HttpException: $message (Status code: $statusCode)';
}
