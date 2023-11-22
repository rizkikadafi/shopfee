import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkApiService {
  final String baseUrl = "https://shopfee-api.vercel.app/api/v1/";
  Future<dynamic> getResponse(String url) async {
    dynamic responseJson;

    try {
      final response = await http.get(Uri.parse(baseUrl + url));
      if (response.statusCode == 200) {
        responseJson = jsonDecode(response.body);
      }
    } catch (e) {
      print(e);
    }
    return responseJson;
  }
}
