// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_actions;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$AuthenticationActions extends AuthenticationActions {
  factory _$AuthenticationActions() => new _$AuthenticationActions._();
  _$AuthenticationActions._() : super._();

  final loginWithCredentials = new ActionDispatcher<LoginPayload>(
      'AuthenticationActions-loginWithCredentials');
  final signupWithCredentials = new ActionDispatcher<SignupPayload>(
      'AuthenticationActions-signupWithCredentials');
  final signupWithCredentialsSuccessfull = new ActionDispatcher<void>(
      'AuthenticationActions-signupWithCredentialsSuccessfull');
  final signupWithCredentialsFailure = new ActionDispatcher<Fail>(
      'AuthenticationActions-signupWithCredentialsFailure');
  final loginWithCredentialsSuccessfull = new ActionDispatcher<void>(
      'AuthenticationActions-loginWithCredentialsSuccessfull');
  final loginWithCredentialsFailure = new ActionDispatcher<Fail>(
      'AuthenticationActions-loginWithCredentialsFailure');
  final logout = new ActionDispatcher<void>('AuthenticationActions-logout');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    loginWithCredentials.setDispatcher(dispatcher);
    signupWithCredentials.setDispatcher(dispatcher);
    signupWithCredentialsSuccessfull.setDispatcher(dispatcher);
    signupWithCredentialsFailure.setDispatcher(dispatcher);
    loginWithCredentialsSuccessfull.setDispatcher(dispatcher);
    loginWithCredentialsFailure.setDispatcher(dispatcher);
    logout.setDispatcher(dispatcher);
  }
}

class AuthenticationActionsNames {
  static final loginWithCredentials = new ActionName<LoginPayload>(
      'AuthenticationActions-loginWithCredentials');
  static final signupWithCredentials = new ActionName<SignupPayload>(
      'AuthenticationActions-signupWithCredentials');
  static final signupWithCredentialsSuccessfull = new ActionName<void>(
      'AuthenticationActions-signupWithCredentialsSuccessfull');
  static final signupWithCredentialsFailure = new ActionName<Fail>(
      'AuthenticationActions-signupWithCredentialsFailure');
  static final loginWithCredentialsSuccessfull = new ActionName<void>(
      'AuthenticationActions-loginWithCredentialsSuccessfull');
  static final loginWithCredentialsFailure =
      new ActionName<Fail>('AuthenticationActions-loginWithCredentialsFailure');
  static final logout = new ActionName<void>('AuthenticationActions-logout');
}
