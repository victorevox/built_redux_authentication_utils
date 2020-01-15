// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(LoginPayloadModel.serializer)
      ..add(SignupPayloadModel.serializer))
    .build();
Serializer<SignupDataChange> _$signupDataChangeSerializer =
    new _$SignupDataChangeSerializer();
Serializer<LoginPayloadModel> _$loginPayloadModelSerializer =
    new _$LoginPayloadModelSerializer();
Serializer<SignupPayloadModel> _$signupPayloadModelSerializer =
    new _$SignupPayloadModelSerializer();

class _$SignupDataChangeSerializer
    implements StructuredSerializer<SignupDataChange> {
  @override
  final Iterable<Type> types = const [SignupDataChange, _$SignupDataChange];
  @override
  final String wireName = 'SignupDataChange';

  @override
  Iterable<Object> serialize(Serializers serializers, SignupDataChange object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'confirmPassword',
      serializers.serialize(object.confirmPassword,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SignupDataChange deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignupDataChangeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'confirmPassword':
          result.confirmPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginPayloadModelSerializer
    implements StructuredSerializer<LoginPayloadModel> {
  @override
  final Iterable<Type> types = const [LoginPayloadModel, _$LoginPayloadModel];
  @override
  final String wireName = 'LoginPayloadModel';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginPayloadModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LoginPayloadModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginPayloadModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SignupPayloadModelSerializer
    implements StructuredSerializer<SignupPayloadModel> {
  @override
  final Iterable<Type> types = const [SignupPayloadModel, _$SignupPayloadModel];
  @override
  final String wireName = 'SignupPayloadModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SignupPayloadModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'confirmPassword',
      serializers.serialize(object.confirmPassword,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SignupPayloadModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignupPayloadModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'confirmPassword':
          result.confirmPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SignupDataChange extends SignupDataChange {
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;

  factory _$SignupDataChange(
          [void Function(SignupDataChangeBuilder) updates]) =>
      (new SignupDataChangeBuilder()..update(updates)).build();

  _$SignupDataChange._({this.email, this.password, this.confirmPassword})
      : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('SignupDataChange', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('SignupDataChange', 'password');
    }
    if (confirmPassword == null) {
      throw new BuiltValueNullFieldError('SignupDataChange', 'confirmPassword');
    }
  }

  @override
  SignupDataChange rebuild(void Function(SignupDataChangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignupDataChangeBuilder toBuilder() =>
      new SignupDataChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignupDataChange &&
        email == other.email &&
        password == other.password &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, email.hashCode), password.hashCode),
        confirmPassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignupDataChange')
          ..add('email', email)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class SignupDataChangeBuilder
    implements Builder<SignupDataChange, SignupDataChangeBuilder> {
  _$SignupDataChange _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _confirmPassword;
  String get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  SignupDataChangeBuilder();

  SignupDataChangeBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _confirmPassword = _$v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignupDataChange other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignupDataChange;
  }

  @override
  void update(void Function(SignupDataChangeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignupDataChange build() {
    final _$result = _$v ??
        new _$SignupDataChange._(
            email: email, password: password, confirmPassword: confirmPassword);
    replace(_$result);
    return _$result;
  }
}

class _$LoginPayloadModel extends LoginPayloadModel {
  @override
  final String email;
  @override
  final String password;

  factory _$LoginPayloadModel(
          [void Function(LoginPayloadModelBuilder) updates]) =>
      (new LoginPayloadModelBuilder()..update(updates)).build();

  _$LoginPayloadModel._({this.email, this.password}) : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('LoginPayloadModel', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('LoginPayloadModel', 'password');
    }
  }

  @override
  LoginPayloadModel rebuild(void Function(LoginPayloadModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginPayloadModelBuilder toBuilder() =>
      new LoginPayloadModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginPayloadModel &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginPayloadModel')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class LoginPayloadModelBuilder
    implements Builder<LoginPayloadModel, LoginPayloadModelBuilder> {
  _$LoginPayloadModel _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  LoginPayloadModelBuilder();

  LoginPayloadModelBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginPayloadModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginPayloadModel;
  }

  @override
  void update(void Function(LoginPayloadModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginPayloadModel build() {
    final _$result =
        _$v ?? new _$LoginPayloadModel._(email: email, password: password);
    replace(_$result);
    return _$result;
  }
}

class _$SignupPayloadModel extends SignupPayloadModel {
  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;

  factory _$SignupPayloadModel(
          [void Function(SignupPayloadModelBuilder) updates]) =>
      (new SignupPayloadModelBuilder()..update(updates)).build();

  _$SignupPayloadModel._({this.email, this.password, this.confirmPassword})
      : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('SignupPayloadModel', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('SignupPayloadModel', 'password');
    }
    if (confirmPassword == null) {
      throw new BuiltValueNullFieldError(
          'SignupPayloadModel', 'confirmPassword');
    }
  }

  @override
  SignupPayloadModel rebuild(
          void Function(SignupPayloadModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignupPayloadModelBuilder toBuilder() =>
      new SignupPayloadModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignupPayloadModel &&
        email == other.email &&
        password == other.password &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, email.hashCode), password.hashCode),
        confirmPassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignupPayloadModel')
          ..add('email', email)
          ..add('password', password)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class SignupPayloadModelBuilder
    implements Builder<SignupPayloadModel, SignupPayloadModelBuilder> {
  _$SignupPayloadModel _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _confirmPassword;
  String get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  SignupPayloadModelBuilder();

  SignupPayloadModelBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _confirmPassword = _$v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignupPayloadModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SignupPayloadModel;
  }

  @override
  void update(void Function(SignupPayloadModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignupPayloadModel build() {
    final _$result = _$v ??
        new _$SignupPayloadModel._(
            email: email, password: password, confirmPassword: confirmPassword);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
