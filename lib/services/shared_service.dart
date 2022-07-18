import 'dart:convert';

import 'package:api_cache_manager/api_cache_manager.dart';
import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_practice_1/models/login%20models/login_response_model.dart';
import 'package:flutter_practice_1/models/register%20models/register_response_model.dart';

class SharedService {
  static Future<bool> isLoggedIn() async {
    var isCacheKeyExist = await APICacheManager().getCacheData("login_details");

    // if() {
    return true;
    // } else {
    //   return true;
    // }
  }

  static Future<LoginResponseModel?> loginDetails() async {
    var isCacheKeyExist =
        await APICacheManager().isAPICacheKeyExist("login_details");

    if (isCacheKeyExist) {
      var cacheData = await APICacheManager().getCacheData("login_details");

      return loginResponseJson(cacheData.syncData);
    }
    return null;
  }

  static Future<void> setLoginDetails(
    LoginResponseModel loginResponse,
  ) async {
    APICacheDBModel cacheModel = APICacheDBModel(
      key: "login_details",
      syncData: jsonEncode(loginResponse.toJson()),
    );

    await APICacheManager().addCacheData(cacheModel);
  }

  static Future<bool> isRegistered(
      RegisterResponseModel registerResponseModel) async {
    var isCacheKeyExist =
        await APICacheManager().getCacheData("register_details");

    // if() {
    return true;
    // } else {
    //   return true;
    // }
  }

  static Future<LoginResponseModel?> registerDetails() async {
    var isCacheKeyExist =
        await APICacheManager().isAPICacheKeyExist("register_details");

    if (isCacheKeyExist) {
      var cacheData = await APICacheManager().getCacheData("register_details");

      return loginResponseJson(cacheData.syncData);
    }
    return null;
  }

  static Future<void> setRegisterDetails(
    RegisterResponseModel registerResponse,
  ) async {
    APICacheDBModel cacheModel = APICacheDBModel(
      key: "register_details",
      syncData: jsonEncode(registerResponse.toJson()),
    );

    await APICacheManager().addCacheData(cacheModel);
  }

  static Future<void> logout(BuildContext context) async {
    await APICacheManager().deleteCache("login_details");
    Navigator.pushNamedAndRemoveUntil(
      context,
      '/login',
      (route) => false,
    );
  }
}
