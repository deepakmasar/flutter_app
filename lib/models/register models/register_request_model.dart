class RegisterRequestModel {
  RegisterRequestModel({
    this.fullName,
    this.email,
    this.newPassword,
    this.confirmNewPassword,
  });
  late String? newPassword;
  late String? fullName;
  late String? email;
  late String? confirmNewPassword;

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    email = json['email'];
    newPassword = json['newPassword'];
    confirmNewPassword = json['confirmNewPassword'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['fullName'] = fullName;
    data['email'] = email;
    data['newPassword'] = newPassword;
    data['confirmNewPassword'] = confirmNewPassword;
    return data;
  }
}
