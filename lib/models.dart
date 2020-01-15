library models;

import 'dart:convert';

import 'package:built_redux/built_redux.dart';
import 'package:built_redux_authentication_utils/built_redux_authentication_utils.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'models.g.dart';

abstract class SignupDataChange
    with SignupPayload
    implements Built<SignupDataChange, SignupDataChangeBuilder> {
  SignupDataChange._();

  factory SignupDataChange([void Function(SignupDataChangeBuilder) updates]) =
      _$SignupDataChange;

  static Serializer<SignupDataChange> get serializer =>
      _$signupDataChangeSerializer;
}

abstract class LoginPayloadModel
    with LoginPayload
    implements Built<LoginPayloadModel, LoginPayloadModelBuilder> {
  LoginPayloadModel._();

  toJson() {
    return json.encode(
        standardSerializers.serializeWith(LoginPayloadModel.serializer, this));
  }

  static LoginPayloadModel fromJson(String jsonString) {
    return standardSerializers.deserializeWith(
        LoginPayloadModel.serializer, json.decode(jsonString));
  }

  factory LoginPayloadModel([void Function(LoginPayloadModelBuilder) updates]) =
      _$LoginPayloadModel;

  static Serializer<LoginPayloadModel> get serializer =>
      _$loginPayloadModelSerializer;
}

abstract class SignupPayloadModel
    with SignupPayload
    implements Built<SignupPayloadModel, SignupPayloadModelBuilder> {
  SignupPayloadModel._();

  factory SignupPayloadModel(
          [void Function(SignupPayloadModelBuilder) updates]) =
      _$SignupPayloadModel;

  String toJson() {
    return json.encode(
        standardSerializers.serializeWith(SignupPayloadModel.serializer, this));
  }

  static SignupPayloadModel fromJson(String jsonString) {
    return standardSerializers.deserializeWith(
        SignupPayloadModel.serializer, json.decode(jsonString));
  }

  static Serializer<SignupPayloadModel> get serializer =>
      _$signupPayloadModelSerializer;
}

abstract class ActionsWithAuthentication extends ReduxActions {
  ActionsWithAuthentication._();

  AuthenticationActions get authenticationActions;
  // factory ActionsWithAuthentication() => _$ActionsWithAuthentication();
}

@SerializersFor(const [
  SignupPayloadModel,
  LoginPayloadModel,
])
final Serializers serializers = _$serializers;

final standardSerializers = (serializers.toBuilder()
      ..addPlugin(
        new StandardJsonPlugin(),
      ))
    .build();
