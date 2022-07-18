import 'dart:convert';

LoginResponseModel loginResponseJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  LoginResponseModel({
    required this.code,
    required this.message,
    required this.accessToken,
    required this.expiresIn,
    required this.tokenType,
    required this.refreshToken,
    required this.user,
  });
  late final int code;
  late final String message;
  late final String accessToken;
  late final int expiresIn;
  late final String tokenType;
  late final String refreshToken;
  late final User user;

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    accessToken = json['accessToken'];
    expiresIn = json['expiresIn'];
    tokenType = json['tokenType'];
    refreshToken = json['refreshToken'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['message'] = message;
    _data['accessToken'] = accessToken;
    _data['expiresIn'] = expiresIn;
    _data['tokenType'] = tokenType;
    _data['refreshToken'] = refreshToken;
    _data['user'] = user.toJson();
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.fullName,
    required this.email,
    required this.role,
    required this.portfolioId,
  });
  late final String id;
  late final String fullName;
  late final String email;
  late final int role;
  late final String portfolioId;

  User.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    fullName = json['fullName'];
    email = json['email'];
    role = json['role'];
    portfolioId = json['portfolioId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['fullName'] = fullName;
    _data['email'] = email;
    _data['role'] = role;
    _data['portfolioId'] = portfolioId;
    return _data;
  }
}
