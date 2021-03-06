import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'failure_exception.dart';

class ApiProvider {
  final String _baseUrl = 'https://randomuser.me/api';

  /*get http method*/
  Future<dynamic> get(String url) async {
    var responseJson;

    try {
      var _url = Uri.parse('$_baseUrl$url');
      final response = await http.get(_url);
      responseJson = _response(response);
    } on SocketException {
      throw DataApiException('No internet connection.');
    }

    return responseJson;
  }

  /*lists of response code and call the failure exception*/
  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnAuthorizedException(response.body.toString());
      case 500:
      default:
        throw DataApiException(
            'Error occurred while communication with server with status code ${response.statusCode}');
    }
  }
}
