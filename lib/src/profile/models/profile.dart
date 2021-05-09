/**
"address": {
"geolocation": {
"lat": "-37.3159",
"long": "81.1496"
},
"city": "kilcoole",
"street": "new road",
"number": 7682,
"zipcode": "12926-3874"
},
"id": 1,
"email": "john@gmail.com",
"username": "johnd",
"password": "m38rmF$",
"name": {
"firstname": "john",
"lastname": "doe"
},
"phone": "1-570-236-7033",
"__v": 0
 */

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile(
    {
      @required Address address,
      @required int id,
      @required String email,
      @required String username,
      @required Name name,
      @required String phone,
      }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);
}


class Address {
	Geolocation geolocation;
	String city;
	String street;
	int number;
	String zipcode;

	Address({this.geolocation, this.city, this.street, this.number, this.zipcode});

	Address.fromJson(Map<String, dynamic> json) {
		geolocation = json['geolocation'] != null ? new Geolocation.fromJson(json['geolocation']) : null;
		city = json['city'];
		street = json['street'];
		number = json['number'];
		zipcode = json['zipcode'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.geolocation != null) {
      data['geolocation'] = this.geolocation.toJson();
    }
		data['city'] = this.city;
		data['street'] = this.street;
		data['number'] = this.number;
		data['zipcode'] = this.zipcode;
		return data;
	}
}

class Geolocation {
  String lat;
  String long;

  Geolocation({this.lat, this.long});

  Geolocation.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    long = json['long'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['long'] = this.long;
    return data;
  }
}

class Name {
	String firstname;
	String lastname;

	Name({this.firstname, this.lastname});

	Name.fromJson(Map<String, dynamic> json) {
		firstname = json['firstname'];
		lastname = json['lastname'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['firstname'] = this.firstname;
		data['lastname'] = this.lastname;
		return data;
	}
}
