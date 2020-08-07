import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' show Client;
import '../shared.dart';

class Network {
  Client client = Client();
  String APPLICATION_JSON = 'application/json';

  Future<dynamic> getRequest(String url) async {
    try {
      final accessToken = await Cache.getCache(key: CACHE_TOKEN_ID);
      final response = await client.get(
        "$url",
        headers: {
          'content-type': APPLICATION_JSON,
          'accept': APPLICATION_JSON,
          HttpHeaders.authorizationHeader: 'Bearer $accessToken'
        },
      ).timeout(Duration(seconds: 20));

      if (response.statusCode == 401) {
        throw Exception('${response.statusCode}');
      }
      return response;
    } on TimeoutException catch (_) {
      throw Exception(_);
    }
  }

  Future<dynamic> putRequest(String url, dynamic body) async {
    final accessToken = await Cache.getCache(key: CACHE_TOKEN_ID);
    final response = await client.put(
      "$url",
      headers: {
        'content-type': APPLICATION_JSON,
        'accept': APPLICATION_JSON,
        HttpHeaders.authorizationHeader: 'Bearer $accessToken'
      },
      body: body,
    );

    if (response.statusCode == 401) {
      throw Exception('${response.statusCode}');
    }

    return response;
  }

  Future<dynamic> patchRequest(String url, dynamic body) async {
    final accessToken = await Cache.getCache(key: CACHE_TOKEN_ID);
    final response = await client.patch(
      "$url",
      headers: {
        'content-type': APPLICATION_JSON,
        'accept': APPLICATION_JSON,
        HttpHeaders.authorizationHeader: 'Bearer $accessToken'
      },
      body: body,
    );

    if (response.statusCode == 401) {
      throw Exception('${response.statusCode}');
    }

    return response;
  }

  Future<dynamic> postRequest(String url, dynamic body) async {
    final accessToken = await Cache.getCache(key: CACHE_TOKEN_ID);
    final response = await client.post(
      "$url",
      headers: {
        'Content-Type': APPLICATION_JSON,
        'Accept': APPLICATION_JSON,
        HttpHeaders.authorizationHeader: 'Bearer $accessToken'
      },
      body: body,
    );

    if (response.statusCode == 401) {
      throw Exception('${response.statusCode}');
    }

    return response;
  }

  Future<dynamic> postRequestRefreshToken(String url) async {
    final accessToken = await Cache.getCache(key: CACHE_TOKEN_ID);
    final response = await client.post(
      "$url",
      headers: {
        'Content-Type': APPLICATION_JSON,
        'Accept': APPLICATION_JSON,
        HttpHeaders.authorizationHeader: 'Bearer $accessToken'
      },
    );

    if (response.statusCode == 401) {
      throw Exception('${response.statusCode}');
    }

    return response;
  }
}
