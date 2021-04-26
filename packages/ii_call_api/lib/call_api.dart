part of ii_call_api;

class CallApi {
  //**************************************************************//
  //**************************************************************//
  //***************             GET                   ************//
  //**************************************************************//
  //**************************************************************//

  Future<dynamic> get(String url) async {
    var client = http.Client();
    var parsedUrl = Uri.parse(url);
    var responseJson;

    try {
      var response = await client.get(parsedUrl);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    } finally {
      client.close();
    }
    return responseJson;
  }

  // api create method
  //**************************************************************//
  //**************************************************************//
  //**************            CREATE            ******************//
  //**************************************************************//
  //**************************************************************//

  Future<dynamic> create(String url, Map bodyRaw) async {
    var client = http.Client();
    var parsedUrl = Uri.parse(url);
    var responseJson;

    try {
      var response = await client.post(
        parsedUrl,
        body: jsonEncode(bodyRaw),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      responseJson = _returnResponse(response);
    } on SocketDirection {
      throw FetchDataException('No Internet connection');
    } finally {
      client.close();
    }
    return responseJson;
  }

  //**************************************************************//
  //**************************************************************//
  //***************             DELETE                ************//
  //**************************************************************//
  //**************************************************************//
  Future<dynamic> delete(String url) async {
    var client = http.Client();
    var parsedUrl = Uri.parse(url);
    var responseJson;

    try {
      final response = await client.delete(parsedUrl);
      responseJson = _returnResponse(response);
    } on SocketDirection {
      throw FetchDataException('No Internet connection');
    } finally {
      client.close();
    }

    return responseJson;
  }

  //**************************************************************//
  //**************************************************************//
  //***************          RETURN RESPONSE          ************//
  //**************************************************************//
  //**************************************************************//

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return json.decode(response.body);
      case 201:
        return json.decode(response.body);
      case 400:
        throw BadRequestException(response.body);
      case 401:
      case 403:
        throw UnauthorisedException(response.body);
      case 422:
        return response.body;
      // return json.decode(response.body);
      // throw UnProcessAbleEntityException(response.body);
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
