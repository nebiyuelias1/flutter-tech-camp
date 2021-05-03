// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

// ignore: unused_element
  ProfileInitialState initial() {
    return const ProfileInitialState();
  }

// ignore: unused_element
  ProfileLoadingState loading() {
    return const ProfileLoadingState();
  }

// ignore: unused_element
  ProfileLoadingSuccessState loadSuccess({@required Profile profile}) {
    return ProfileLoadingSuccessState(
      profile: profile,
    );
  }

// ignore: unused_element
  ProfileErrorState error({@required String message}) {
    return ProfileErrorState(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadSuccess(Profile profile),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadSuccess(Profile profile),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProfileInitialState value),
    @required TResult loading(ProfileLoadingState value),
    @required TResult loadSuccess(ProfileLoadingSuccessState value),
    @required TResult error(ProfileErrorState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProfileInitialState value),
    TResult loading(ProfileLoadingState value),
    TResult loadSuccess(ProfileLoadingSuccessState value),
    TResult error(ProfileErrorState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class $ProfileInitialStateCopyWith<$Res> {
  factory $ProfileInitialStateCopyWith(
          ProfileInitialState value, $Res Function(ProfileInitialState) then) =
      _$ProfileInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileInitialStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileInitialStateCopyWith<$Res> {
  _$ProfileInitialStateCopyWithImpl(
      ProfileInitialState _value, $Res Function(ProfileInitialState) _then)
      : super(_value, (v) => _then(v as ProfileInitialState));

  @override
  ProfileInitialState get _value => super._value as ProfileInitialState;
}

/// @nodoc
class _$ProfileInitialState implements ProfileInitialState {
  const _$ProfileInitialState();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadSuccess(Profile profile),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadSuccess(Profile profile),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProfileInitialState value),
    @required TResult loading(ProfileLoadingState value),
    @required TResult loadSuccess(ProfileLoadingSuccessState value),
    @required TResult error(ProfileErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProfileInitialState value),
    TResult loading(ProfileLoadingState value),
    TResult loadSuccess(ProfileLoadingSuccessState value),
    TResult error(ProfileErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileInitialState implements ProfileState {
  const factory ProfileInitialState() = _$ProfileInitialState;
}

/// @nodoc
abstract class $ProfileLoadingStateCopyWith<$Res> {
  factory $ProfileLoadingStateCopyWith(
          ProfileLoadingState value, $Res Function(ProfileLoadingState) then) =
      _$ProfileLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileLoadingStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileLoadingStateCopyWith<$Res> {
  _$ProfileLoadingStateCopyWithImpl(
      ProfileLoadingState _value, $Res Function(ProfileLoadingState) _then)
      : super(_value, (v) => _then(v as ProfileLoadingState));

  @override
  ProfileLoadingState get _value => super._value as ProfileLoadingState;
}

/// @nodoc
class _$ProfileLoadingState implements ProfileLoadingState {
  const _$ProfileLoadingState();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProfileLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadSuccess(Profile profile),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadSuccess(Profile profile),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProfileInitialState value),
    @required TResult loading(ProfileLoadingState value),
    @required TResult loadSuccess(ProfileLoadingSuccessState value),
    @required TResult error(ProfileErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProfileInitialState value),
    TResult loading(ProfileLoadingState value),
    TResult loadSuccess(ProfileLoadingSuccessState value),
    TResult error(ProfileErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadingState implements ProfileState {
  const factory ProfileLoadingState() = _$ProfileLoadingState;
}

/// @nodoc
abstract class $ProfileLoadingSuccessStateCopyWith<$Res> {
  factory $ProfileLoadingSuccessStateCopyWith(ProfileLoadingSuccessState value,
          $Res Function(ProfileLoadingSuccessState) then) =
      _$ProfileLoadingSuccessStateCopyWithImpl<$Res>;
  $Res call({Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class _$ProfileLoadingSuccessStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileLoadingSuccessStateCopyWith<$Res> {
  _$ProfileLoadingSuccessStateCopyWithImpl(ProfileLoadingSuccessState _value,
      $Res Function(ProfileLoadingSuccessState) _then)
      : super(_value, (v) => _then(v as ProfileLoadingSuccessState));

  @override
  ProfileLoadingSuccessState get _value =>
      super._value as ProfileLoadingSuccessState;

  @override
  $Res call({
    Object profile = freezed,
  }) {
    return _then(ProfileLoadingSuccessState(
      profile: profile == freezed ? _value.profile : profile as Profile,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    if (_value.profile == null) {
      return null;
    }
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
class _$ProfileLoadingSuccessState implements ProfileLoadingSuccessState {
  const _$ProfileLoadingSuccessState({@required this.profile})
      : assert(profile != null);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'ProfileState.loadSuccess(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileLoadingSuccessState &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality().equals(other.profile, profile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(profile);

  @JsonKey(ignore: true)
  @override
  $ProfileLoadingSuccessStateCopyWith<ProfileLoadingSuccessState>
      get copyWith =>
          _$ProfileLoadingSuccessStateCopyWithImpl<ProfileLoadingSuccessState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadSuccess(Profile profile),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return loadSuccess(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadSuccess(Profile profile),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProfileInitialState value),
    @required TResult loading(ProfileLoadingState value),
    @required TResult loadSuccess(ProfileLoadingSuccessState value),
    @required TResult error(ProfileErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProfileInitialState value),
    TResult loading(ProfileLoadingState value),
    TResult loadSuccess(ProfileLoadingSuccessState value),
    TResult error(ProfileErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ProfileLoadingSuccessState implements ProfileState {
  const factory ProfileLoadingSuccessState({@required Profile profile}) =
      _$ProfileLoadingSuccessState;

  Profile get profile;
  @JsonKey(ignore: true)
  $ProfileLoadingSuccessStateCopyWith<ProfileLoadingSuccessState> get copyWith;
}

/// @nodoc
abstract class $ProfileErrorStateCopyWith<$Res> {
  factory $ProfileErrorStateCopyWith(
          ProfileErrorState value, $Res Function(ProfileErrorState) then) =
      _$ProfileErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ProfileErrorStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileErrorStateCopyWith<$Res> {
  _$ProfileErrorStateCopyWithImpl(
      ProfileErrorState _value, $Res Function(ProfileErrorState) _then)
      : super(_value, (v) => _then(v as ProfileErrorState));

  @override
  ProfileErrorState get _value => super._value as ProfileErrorState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ProfileErrorState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ProfileErrorState implements ProfileErrorState {
  const _$ProfileErrorState({@required this.message}) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProfileErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ProfileErrorStateCopyWith<ProfileErrorState> get copyWith =>
      _$ProfileErrorStateCopyWithImpl<ProfileErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loadSuccess(Profile profile),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loadSuccess(Profile profile),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(ProfileInitialState value),
    @required TResult loading(ProfileLoadingState value),
    @required TResult loadSuccess(ProfileLoadingSuccessState value),
    @required TResult error(ProfileErrorState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(ProfileInitialState value),
    TResult loading(ProfileLoadingState value),
    TResult loadSuccess(ProfileLoadingSuccessState value),
    TResult error(ProfileErrorState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileErrorState implements ProfileState {
  const factory ProfileErrorState({@required String message}) =
      _$ProfileErrorState;

  String get message;
  @JsonKey(ignore: true)
  $ProfileErrorStateCopyWith<ProfileErrorState> get copyWith;
}
