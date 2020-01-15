abstract class LoginPayload {
  String get email;
  String get password;
}

abstract class SignupPayload {
  String get email;
  String get password;
  String get confirmPassword;
}

abstract class Fail {
  String get message;
}