class AppUser {
  String? appUserId;
  String? userName;
  String? userEmail;
  String? phoneNumber;
  String? address;
  String? password;
  String? confirmPassword;
  bool? isFirstLogin;
  String? profileImage;

  AppUser({
    this.appUserId,
    this.userEmail,
    this.userName,
    this.phoneNumber,
    this.address,
    this.password,
    this.confirmPassword,
    this.isFirstLogin,
    this.profileImage,
  });

  AppUser.fromJson(json, id) {
    appUserId = id;
    userName = json['userName'] ?? '';
    userEmail = json['userEmail'];
    phoneNumber = json['phoneNumber'] ?? '';
    address = json['address'] ?? '';
    password = json['password'] ?? '';
    confirmPassword = json['confirmPassword'] ?? '';
    isFirstLogin = json['isFirstLogin'] ?? '';
    profileImage = json['profileImage'];
  }

  toJson() {
    return {
      'appUserId': appUserId,
      'userName': userName,
      'userEmail': userEmail,
      'phoneNumber': phoneNumber,
      'address': address,
      'password': password,
      'confirmPassword': confirmPassword,
      'isFirstLogin': isFirstLogin,
      'profileImage': profileImage,
    };
  }
}
