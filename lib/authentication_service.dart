import 'package:dartz/dartz.dart';
import 'entities.dart';

abstract class AuthenticationService {
Future<Either<Failure, bool>> isAuthenticated();
  Future<Either<Failure, String>> signUpWithCredentials(SignupPayload payload);
  Future<Either<Failure, String>> loginWithCredentials(LoginPayload payload);
  // Future<Either<Failure, User>> fetchAuthenticatedUserData();
  // Future<Either<Failure, bool>> verifyAccountWithCode(String code);
  Future<Either<Failure, Null>> logout();
  Future<Either<Failure, void>> authWithGoogle();
}