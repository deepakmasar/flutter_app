import 'dart:convert';
import 'dart:math';

import 'package:flutter_practice_1/models/login%20models/login_request_model.dart';
import 'package:flutter_practice_1/models/login%20models/login_response_model.dart';
import 'package:flutter_practice_1/models/register%20models/register_request_model.dart';
import 'package:flutter_practice_1/models/register%20models/register_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_practice_1/models/user_detail_response_model.dart';

import '../../config.dart';
import 'shared_service.dart';

class APIService {
  static var client = http.Client();

  static Future<bool> login(
    LoginRequestModel model,
  ) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.parse(
      Config.apiURL + Config.loginAPI,
    );

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );
    // print(response.body.toString());
    if (response.statusCode == 200) {
      await SharedService.setLoginDetails(
        loginResponseJson(
          response.body,
        ),
      );

      return true;
    } else {
      return false;
    }
  }

  static Future<RegisterResponseModel> register(
    RegisterRequestModel model,
  ) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var url = Uri.http(
      Config.apiURL,
      Config.registerAPI,
    );

    var response = await client.post(
      url,
      headers: requestHeaders,
      body: jsonEncode(model.toJson()),
    );

    return registerResponseModel(
      response.body,
    );
  }

  static Future getUserProfile() async {
    var loginDetails = await SharedService.loginDetails();

    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ${loginDetails!.accessToken}'
    };

    var url =
        Uri.parse(Config.apiURL + Config.userProfileAPI + loginDetails.user.id);
    print(loginDetails.accessToken);
    var response = await client.get(
      url,
      headers: requestHeaders,
    );
    //   print(response.statusCode);
    // print(response.body);
    //   Map<String, dynamic> body = json.decode(response.body);
    // Map<String, dynamic> data = body;
    var body = userDetailResposeModel(response.body);
    // print(body.data);
    var data = body.data;
    if (response.statusCode == 200) {
      return body.data;
    } else {
      return jsonDecode(response.body);
    }
  }
}
