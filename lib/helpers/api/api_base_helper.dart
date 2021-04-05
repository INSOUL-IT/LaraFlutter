import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:lara_flutter/config/url/url.dart';

import 'app_exceptions.dart';

class ApiBaseHelper {
  final String _baseUrl = apiBaseUrl;

  // api get method
  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(_baseUrl + url);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  // api delete method
  Future<dynamic> delete(String url) async {
    var responseJson;
    try {
      final response = await http.delete(
        _baseUrl + "$url",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      responseJson = _returnResponse(response);
    } on SocketDirection {
      throw FetchDataException('No Internet connection');
    }

    return responseJson;
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return json.decode(response.body);
      case 400:
        throw BadRequestException(response.body);
      case 401:
      case 403:
        throw UnauthorisedException(response.body);
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
