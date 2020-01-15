import 'package:built_redux/built_redux.dart';
import 'package:built_redux/built_redux_test_utils.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCheckAuthenticationSession extends Mock
    implements CheckAuthenticationSession {}

void main() {
  Store<AppState, AppStateBuilder, AppActions> store;
  final SignupPayloadModel signupPayload = createSignupPayloadMock();
  final LoginPayloadModel loginPayload = createLoginPayloadMock();

  MockAuthenticationService mockAuthenticationService;
  MockDialogService mockDialogService;
  MockCheckAuthenticationSession mockCheckAuthenticationSession;
  AuthenticationUsecases mockAuthenticationUsecases;

  setUp(() {
    mockAuthenticationService = MockAuthenticationService();
    mockNavigationService = MockNavigationService();
    mockDialogService = MockDialogService();
    mockCheckAuthenticationSession = MockCheckAuthenticationSession();
    mockAuthenticationUsecases = AuthenticationUsecases(
      checkAuthenticationSession: mockCheckAuthenticationSession,
      fetchAuthenticatedUserData:
          FetchAuthenticatedUserData(mockAuthenticationService),
      loginWithCredentials: LoginWithCredentials(mockAuthenticationService),
      signupWithCredentials: SignupWithCredentials(mockAuthenticationService),
      verifyAccountWithCode: VerifyAccountWithCode(mockAuthenticationService),
      launchMailApp: LaunchMailApp(mockAppLaunchService),
      logout: Logout(mockAuthenticationService),
      authWithGoogle: AuthWithGoogle(mockAuthenticationService),
    );
    var actions = new AppActions();
    var defaultValue = new AppState();
    var reducer = appReducerBuilder.build();
    store = new Store<AppState, AppStateBuilder, AppActions>(
      reducer,
      defaultValue,
      actions,
      middleware: [
        AuthenticationMiddleware(
          dialogService: mockDialogService,
          authenticationUsecases: mockAuthenticationUsecases,
        )(),
      ],
    );
  });

  group("middlewares", () {
    group("signupWithCredentials", () {
      setUp(() {});

      test("should call method in service", () {
        MockAuthenticationService.stubSignupWithCredentialsSuccessfulResponse(
          mockAuthenticationService,
        );

        MockAuthenticationService.stubFetchAuthenticatedDataSuccessfulResponse(
          mockAuthenticationService,
        );

        store.actions.authenticationActions
            .signupWithCredentials(signupPayload);
        verify(mockAuthenticationService.signUpWithCredentials(signupPayload));
      });

      group("successfull response", () {
        setUp(() {
          MockAuthenticationService.stubSignupWithCredentialsSuccessfulResponse(
            mockAuthenticationService,
          );
        });

        test("should call successful action", () {
          // expect(store.state.authentication.user, null);
          store.actions.authenticationActions
              .signupWithCredentials(signupPayload);
          expectDispatched(store
              .actions.authenticationActions.signupWithCredentialsSuccessfull);
        });
      });

      group("failure response", () {
        setUp(() {
          MockAuthenticationService
              .stubAuthenticationServiceWithFailureResponse(
            mockAuthenticationService,
          );
        });

        test("should call failure action", () {
          store.actions.authenticationActions
              .signupWithCredentials(signupPayload);
          expectDispatched(
              store.actions.authenticationActions.signupWithCredentialsFailure);
        });
      });
    });

    group("loginWithCredentials", () {
      setUp(() {
        MockAuthenticationService.stubFetchAuthenticatedDataSuccessfulResponse(
          mockAuthenticationService,
        );
      });

      test("should call method in service", () {
        MockAuthenticationService.stubLoginWithCredentialsSuccessfulResponse(
            mockAuthenticationService);
        store.actions.authenticationActions.loginWithCredentials(loginPayload);
        verify(mockAuthenticationService.loginWithCredentials(loginPayload));
      });

      group("successfull response", () {
        setUp(() {
          MockAuthenticationService.stubLoginWithCredentialsSuccessfulResponse(
            mockAuthenticationService,
          );
        });

        test("should call successful action", () {
          // expect(store.state.authentication.user, null);
          store.actions.authenticationActions
              .loginWithCredentials(loginPayload);
          expectDispatched(store
              .actions.authenticationActions.loginWithCredentialsSuccessfull);
        });
      });

      group("failure response", () {
        setUp(() {
          MockAuthenticationService
              .stubAuthenticationServiceWithFailureResponse(
            mockAuthenticationService,
          );
        });

        test("should call failure action", () {
          store.actions.authenticationActions
              .loginWithCredentials(loginPayload);
          expectDispatched(
              store.actions.authenticationActions.loginWithCredentialsFailure);
        });
      });
    });

    group("logout", () {
      test("should call logout usecase", () {
        store.actions.authenticationActions.logout();
        verify(mockAuthenticationUsecases.logout.call());
      });
    });

  });

  // group("${AuthenticationActionsNames.authWithGoogle.name}", () {
  //   group("success", () {
  //     setUp(() {
  //       // when(mockAuthenticationUsecases.authWithGoogle.call(NoParams())).thenAnswer((_) async {
  //       //   return Right(null);
  //       // });
  //       MockAuthenticationService.stubGoogleAuthSuccess(
  //           mockAuthenticationService);
  //       MockAuthenticationService.stubFetchAuthenticatedDataSuccessfulResponse(
  //           mockAuthenticationService);
  //     });
  //     test("should call usecase", () {
  //       store.actions.authenticationActions.authWithGoogle(NoParams());
  //       verify(mockAuthenticationUsecases.authWithGoogle(NoParams()));
  //     });

  //     test("should dispatch action", () {
  //       expectDispatched(
  //           store.actions.authenticationActions.authWithGoogleSuccess);
  //       store.actions.authenticationActions.authWithGoogle(NoParams());
  //     });
  //   });

  //   group("failure", () {
  //     setUp(() {
  //       MockAuthenticationService.stubAuthenticationServiceWithFailureResponse(
  //           mockAuthenticationService);
  //     });

  //     test("dispatch action", () {
  //       expectDispatched(store.actions.authenticationActions.authWithGoogle);
  //       store.actions.authenticationActions.authWithGoogle(NoParams());
  //     });
  //   });
  // });

  // group("${AuthenticationActionsNames.authWithGoogleSuccess.name}", () {
  //   test("dispatch actions", () {
  //     expectDispatched(
  //         store.actions.authenticationActions.fetchAuthenticatedUserData);
  //     store.actions.authenticationActions.authWithGoogleSuccess();
  //   });
  // });

}

Future delayed(Function cb) async {
  await Future.delayed(Duration(milliseconds: 1));
  cb();
}
