import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';


class MockAuthenticationService extends Mock implements AuthenticationService {

  static stubSignupWithCredentialsSuccessfulResponse(MockAuthenticationService mockAuthenticationService, [String response = "token"]) {
    when(mockAuthenticationService.signUpWithCredentials(any)).thenAnswer((_) async {
      return Right(response);
    });
  }

  static stubLoginWithCredentialsSuccessfulResponse(MockAuthenticationService mockAuthenticationService, [String response = "token"]) {
    when(mockAuthenticationService.loginWithCredentials(any)).thenAnswer((_) async {
      return Right("token");
    });
  }

  static stubFetchAuthenticatedDataSuccessfulResponse(MockAuthenticationService mockAuthenticationService, [String response = "token"]) {
    when(mockAuthenticationService.fetchAuthenticatedUserData()).thenAnswer((_) async {
      return Right(createUserModelMock());
    });
  }

  static stubLogoutSuccess(MockAuthenticationService mockAuthenticationService) {
    when(mockAuthenticationService.logout()).thenAnswer((_) async {
      return Right(null);
    });
  }

  static stubGoogleAuthSuccess(MockAuthenticationService mockAuthenticationService) {
    when(mockAuthenticationService.authWithGoogle()).thenAnswer((_) async {
      return Right(null);
    });
  }

  static stubAuthenticationServiceWithFailureResponse(MockAuthenticationService mockAuthenticationService, [Failure failure]) {
    if(failure == null) {
      failure = ServerFailure();
    }
    when(mockAuthenticationService.signUpWithCredentials(any)).thenAnswer((_) async {
      return Left(failure);
    });
    when(mockAuthenticationService.loginWithCredentials(any)).thenAnswer((_) async {
      return Left(failure);
    });
    when(mockAuthenticationService.fetchAuthenticatedUserData()).thenAnswer((_) async {
      return Left(failure);
    });
    when(mockAuthenticationService.verifyAccountWithCode(any)).thenAnswer((_) async {
      return Left(failure);
    });
    when(mockAuthenticationService.isAuthenticated()).thenAnswer((_) async {
      return Left(failure);
    });
    when(mockAuthenticationService.authWithGoogle()).thenAnswer((_) async {
      return Left(failure);
    });
  }

  static stubVerifyWithCodeSuccessResponse(MockAuthenticationService mockAuthenticationService) {
    when(mockAuthenticationService.verifyAccountWithCode(any)).thenAnswer((_) async {
      return Right(true);
    });
  }

  static void stubIsAuthenticatedTrueResponse(MockAuthenticationService mockAuthenticationService) {
    when(mockAuthenticationService.isAuthenticated()).thenAnswer((_) async {
      return Right(true);
    });
  }

  static void stubIsAuthenticatedFalseResponse(MockAuthenticationService mockAuthenticationService) {
    when(mockAuthenticationService.isAuthenticated()).thenAnswer((_) async {
      return Right(false);
    });
  }

  // static stubVerifyWithCodeFailureResponse(MockAuthenticationService mockAuthenticationService, [Failure failure]) {
  //   if(failure == null) {
  //     failure = ServerFailure();
  //   }
  // }
  
}
