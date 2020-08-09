import 'package:meta/meta.dart';

class User {
  final String name;
  final String photo;
  final String phone;
  final String email;
  final String password;
  final String address;
  final String district;
  final String city;
  final String state;
  final int status;
  final DateTime joinDate;

  const User({
    @required this.name,
              this.photo,
              this.phone,
    @required this.email,
    @required this.password,
              this.address,
              this.district,
              this.city,
              this.state,
    @required this.status,
    @required this.joinDate,          
  });
}