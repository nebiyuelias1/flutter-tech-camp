// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
class _$ProfileTearOff {
  const _$ProfileTearOff();

// ignore: unused_element
  _Profile call(
      {@required Address address,
      @required int id,
      @required String email,
      @required String username,
      @required Name name,
      @required String phone}) {
    return _Profile(
      address: address,
      id: id,
      email: email,
      username: username,
      name: name,
      phone: phone,
    );
  }

// ignore: unused_element
  Profile fromJson(Map<String, Object> json) {
    return Profile.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Profile = _$ProfileTearOff();

/// @nodoc
mixin _$Profile {
  Address get address;
  int get id;
  String get email;
  String get username;
  Name get name;
  String get phone;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call(
      {Address address,
      int id,
      String email,
      String username,
      Name name,
      String phone});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object address = freezed,
    Object id = freezed,
    Object email = freezed,
    Object username = freezed,
    Object name = freezed,
    Object phone = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed ? _value.address : address as Address,
      id: id == freezed ? _value.id : id as int,
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      name: name == freezed ? _value.name : name as Name,
      phone: phone == freezed ? _value.phone : phone as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) then) =
      __$ProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {Address address,
      int id,
      String email,
      String username,
      Name name,
      String phone});
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(_Profile _value, $Res Function(_Profile) _then)
      : super(_value, (v) => _then(v as _Profile));

  @override
  _Profile get _value => super._value as _Profile;

  @override
  $Res call({
    Object address = freezed,
    Object id = freezed,
    Object email = freezed,
    Object username = freezed,
    Object name = freezed,
    Object phone = freezed,
  }) {
    return _then(_Profile(
      address: address == freezed ? _value.address : address as Address,
      id: id == freezed ? _value.id : id as int,
      email: email == freezed ? _value.email : email as String,
      username: username == freezed ? _value.username : username as String,
      name: name == freezed ? _value.name : name as Name,
      phone: phone == freezed ? _value.phone : phone as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Profile implements _Profile {
  const _$_Profile(
      {@required this.address,
      @required this.id,
      @required this.email,
      @required this.username,
      @required this.name,
      @required this.phone})
      : assert(address != null),
        assert(id != null),
        assert(email != null),
        assert(username != null),
        assert(name != null),
        assert(phone != null);

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$_$_ProfileFromJson(json);

  @override
  final Address address;
  @override
  final int id;
  @override
  final String email;
  @override
  final String username;
  @override
  final Name name;
  @override
  final String phone;

  @override
  String toString() {
    return 'Profile(address: $address, id: $id, email: $email, username: $username, name: $name, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Profile &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProfileToJson(this);
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {@required Address address,
      @required int id,
      @required String email,
      @required String username,
      @required Name name,
      @required String phone}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  Address get address;
  @override
  int get id;
  @override
  String get email;
  @override
  String get username;
  @override
  Name get name;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$ProfileCopyWith<_Profile> get copyWith;
}
