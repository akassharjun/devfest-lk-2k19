import 'dart:convert';

import 'package:devfest_lk_2019/model/auth_response.dart';
import 'package:devfest_lk_2019/model/session.dart';
import 'package:devfest_lk_2019/model/speaker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

abstract class Api {
  Future<AuthResponse> authorizeUser(String email, String ticketNumber);

  Future<List<Session>> getAllSessions();

  Future<List<Speaker>> getAllSpeakers();
}

class NetworkService extends Api {
  String baseURL = "https://devfest2019-e86e2.appspot.com/conference";

  Future<Map<String, String>> _getBearerToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String bearerToken = prefs.get('bearerToken');
    return {'Authorization': 'Bearer $bearerToken'};
  }

  @override
  Future<AuthResponse> authorizeUser(String email, String ticketNumber) async {
    var url = "$baseURL/auth";

    var response = await http.post(
      url,
      body: {'userID': ticketNumber, 'userEmail': email},
    );
    print(response.body.toString());
    return AuthResponse.fromJson(response.body.toString());
    return new AuthResponse();
  }

  Future<String> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String bearerToken = prefs.get('bearerToken');
    print("Bearer " + bearerToken);
    return "Bearer " + bearerToken;
  }

  @override
  Future<List<Session>> getAllSessions() async {
    var url = '$baseURL/agenda';
    var response = await http.get(
      url,
      headers: await _getBearerToken(),
    );
    if (response.statusCode == 200) {
      List list = jsonDecode(response.body);
      List<Session> sessionList = [];
      for (var element in list) {
        sessionList.add(Session.fromMap(element));
      }
      return sessionList;
    } else {
      throw NetworkException(response.body);
    }
  }

  @override
  Future<List<Speaker>> getAllSpeakers() async {
    var url = '$baseURL/speakers';
    var response = await http.get(
      url,
      headers: await _getBearerToken(),
    );
    if (response.statusCode == 200) {
      List list = jsonDecode(response.body);
      List<Speaker> speakerList = [];
      for (var element in list) {
        speakerList.add(Speaker.fromMap(element));
      }
      return speakerList;
    } else {
      throw NetworkException(response.body);
    }
  }

//  @override
//  Future<List<Session>> getAllSessions() async {
//    Response response;
//    Dio dio = new Dio();
//    dio.options.headers["Authorization"] = await getToken();
//    dio.options.headers["Content-Type"] =  "application/json";
//    dio.transformer = FlutterTransformer(); // replace dio default transformer
//    var url = '$baseURL/agenda';
//    response = await dio.get(url);
//    print(response.data);
//    Map responseBody = json.decode(response.data);
//    print(responseBody);
//    return [];
//  }

//  @override
//  Future<List<Session>> getAllSessions() async {
//    print("fetching");
//    final httpClient = Client();
//    final jsonApiClient = JsonApiClient(httpClient);
//    final uri = Uri.parse('$baseURL/agenda');
//    print(uri);
//    print( await _getBearerToken());
//    final response = await jsonApiClient.fetchCollection(uri, headers: await _getBearerToken());
//    print('Status: ${response.status}');
//    print('Headers: ${response.headers}');
//
//    final resource = response.data.unwrap().first;
//
//    print('The collection page size is ${response.data.collection.length}');
//    print('The first element is $resource');
//    print('Attributes:');
//    resource.attributes.forEach((k, v) => print('$k=$v'));
//    print('Relationships:');
//    resource.toOne.forEach((k, v) => print('$k=$v'));
//    resource.toMany.forEach((k, v) => print('$k=$v'));
//    httpClient.close();
//
//    return [];
//  }

}

class NetworkException implements Exception {
  String cause;

  NetworkException(this.cause);
}
