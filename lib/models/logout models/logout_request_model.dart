class LogoutResquestModel {
  LogoutResquestModel({
    required this.accessToken,
    required this.email,
    required this.expiresIn,
    required this.fullName,
    required this.portfolioId,
    required this.refreshToken,
    required this.role,
    required this.id,
  });
  late final String accessToken;
  late final String email;
  late final int expiresIn;
  late final String fullName;
  late final String portfolioId;
  late final String refreshToken;
  late final int role;
  late final String id;

  LogoutResquestModel.fromJson(Map<String, dynamic> json){
    accessToken = json['accessToken'];
    email = json['email'];
    expiresIn = json['expiresIn'];
    fullName = json['fullName'];
    portfolioId = json['portfolioId'];
    refreshToken = json['refreshToken'];
    role = json['role'];
    id = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['accessToken'] = accessToken;
    _data['email'] = email;
    _data['expiresIn'] = expiresIn;
    _data['fullName'] = fullName;
    _data['portfolioId'] = portfolioId;
    _data['refreshToken'] = refreshToken;
    _data['role'] = role;
    _data['_id'] = id;
    return _data;
  }
}