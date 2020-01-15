import 'package:built_redux/built_redux.dart';
import 'package:built_value/built_value.dart';
import 'authentication_actions.dart';
import 'models.dart';
import 'entities.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class AuthenticationMiddleware<V extends Built<V, B>, B extends Builder<V, B>,
    A extends ActionsWithAuthentication> {
  final AuthenticationUsecases authenticationUsecases;

  AuthenticationMiddleware({
    @required this.authenticationUsecases,
  });

  Middleware<V, B, A> call() {
    return (MiddlewareBuilder<V, B, A>()
          ..add(
            AuthenticationActionsNames.signupWithCredentials,
            signupWithCredentials(),
          )
          ..add(AuthenticationActionsNames.loginWithCredentials,
              loginWithCredentias)
          ..add(AuthenticationActionsNames.loginWithCredentialsSuccessfull,
              onLoginWithCredentialsSuccessfull)
          ..add(AuthenticationActionsNames.signupWithCredentialsSuccessfull,
              onSignupWithCredentialsSuccessfull)
          // ..add(AuthenticationActionsNames.authWithGoogle, authWithGoogle)
          // ..add(AuthenticationActionsNames.authWithGoogleSuccess,
          //     authWithGoogleSuccess)
          ..add(AuthenticationActionsNames.logout, logout))
        .build();
  }

  MiddlewareHandler<V, B, A, SignupPayload> signupWithCredentials() {
    return (MiddlewareApi<V, B, A> api, ActionHandler next,
        Action<SignupPayload> action) async {
      next(action);
      var response = await this
          .authenticationUsecases
          .signupWithCredentials(action.payload);
      response.fold((failure) {
        api.actions.authenticationActions.signupWithCredentialsFailure(failure);
      }, (_) {
        api.actions.authenticationActions.signupWithCredentialsSuccessfull();
      });
    };
  }

  void loginWithCredentias(
    MiddlewareApi<V, B, A> api,
    next,
    Action<LoginPayload> action,
  ) async {
    next(action);
    var response =
        await this.authenticationUsecases.loginWithCredentials(action.payload);
    response.fold((failure) {
      api.actions.authenticationActions.loginWithCredentialsFailure(failure);
    }, (_) {
      api.actions.authenticationActions.loginWithCredentialsSuccessfull();
    });
  }

  void onLoginWithCredentialsSuccessfull(
      MiddlewareApi<V, B, A> api, next, Action<void> action) {
    next(action);
  }

  void onSignupWithCredentialsSuccessfull(
      MiddlewareApi<V, B, A> api, next, Action<void> action) {
    next(action);
  }

  void logout(
    MiddlewareApi<V, B, A> api,
    next,
    Action<void> action,
  ) async {
    next(action);
    await authenticationUsecases.logout();
  }

  // void authWithGoogle(
  //   MiddlewareApi<V, B, A> api,
  //   next,
  //   Action<void> action,
  // ) async {
  //   next(action);
  //   final res = await authenticationUsecases.authWithGoogle(void());
  //   res.fold((failure) {
  //     dialogService.showDialog(title: "Error", description: failure.message);
  //     api.actions.authenticationActions.authWithGoogleFailure(failure);
  //   }, (_) {
  //     api.actions.authenticationActions.authWithGoogleSuccess(void());
  //   });
  // }

  // void authWithGoogleSuccess(
  //   MiddlewareApi<V, B, A> api,
  //   next,
  //   Action<void> action,
  // ) async {
  //   next(action);
  //   api.actions.authenticationActions.fetchAuthenticatedUserData(void());
  // }
}
