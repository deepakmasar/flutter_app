class UserModel {
  String? email;
  String? newPassword;
  String? confirmNewPassword;

  UserModel({
    this.email,
    this.newPassword,
    this.confirmNewPassword,
  });

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
        email: map['email'],
        newPassword: map['newPassword'],
        confirmNewPassword: map['confirmNewPassword']);
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'newPassword': newPassword,
      'confirmNewPassword': confirmNewPassword,
    };
  }
}
