import 'dart:async';
import 'http_data.dart';

class Customer {
  final String customer_id;
  final String first_name;
  final String last_name;
  final String email;
  final String username;
  final String password;
  final String phone;

  Customer.fromMap(Map<String, dynamic> map)
    : customer_id = map['customer_id'],
      first_name = map['first_name'],
      last_name = map['last_name'],
      email = map['email'],
      username = map['username'],
      password = map['password'],
      phone = map['phone'];
}

abstract class CustomerRepository {
  Future<List<Customer>> fetch(HttpRequest request);
}
