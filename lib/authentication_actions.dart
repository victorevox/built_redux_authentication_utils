library auth_actions;

import 'package:built_redux/built_redux.dart';
import 'package:built_redux_authentication_utils/built_redux_authentication_utils.dart';

part 'authentication_actions.g.dart';

abstract class AuthenticationActions extends ReduxActions {


  ActionDispatcher<LoginPayload> get loginWithCredentials;
  ActionDispatcher<SignupPayload> get signupWithCredentials;
  // ActionDispatcher<SignupDataChange> get signupDataChange;
  ActionDispatcher<void> get signupWithCredentialsSuccessfull;
  ActionDispatcher<Fail> get signupWithCredentialsFailure;
  ActionDispatcher<void> get loginWithCredentialsSuccessfull;
  ActionDispatcher<Fail> get loginWithCredentialsFailure;
  // ActionDispatcher<void> get fetchAuthenticatedUserData;
  // ActionDispatcher<User> get fetchAuthenticatedUserDataSucessfull;
  // ActionDispatcher<Fail> get fetchAuthenticatedUserDataFailure;
  // ActionDispatcher<void> get launchMailApp;
  // ActionDispatcher<String> get verifyAccountWithCode;
  // ActionDispatcher<void> get verifyAccountWithCodeSuccess;
  // ActionDispatcher<Fail> get verifyAccountWithCodeFailure;
  // ActionDispatcher<String> get verificationCodeChange;
  ActionDispatcher<void> get logout;
  // ActionDispatcher<AuthenticationType> get authenticationTypeSelected;
  // ActionDispatcher<void> get authWithGoogle;
  // ActionDispatcher<void> get authWithGoogleSuccess;
  // ActionDispatcher<Fail> get authWithGoogleFailure;

  AuthenticationActions._();

  factory AuthenticationActions() => _$AuthenticationActions();

}