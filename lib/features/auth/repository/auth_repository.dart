import 'dart:convert';
import 'dart:math';

import 'package:cabzing/api/api.dart';
import 'package:cabzing/features/auth/screen/login.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../../screen/dashboard.dart';

final authRepositoryProvider = Provider((ref) {
  return AuthRepository();
});

class AuthRepository{

  Future<Either<String, String>> createLogin(String name, String password) async {
    print(name);
    try {



      final prefs = await SharedPreferences.getInstance();
      final response = await http.post(
        Uri.parse(loginUrl),
        body: {
          "username": name,
          "password": password,
          "is_mobile": true.toString(),
        },
      );

      if (response.statusCode == 200) {
        // print('name: $name');
        // print('password: $password');
        // print('response ${response.body}');
        // print(response.statusCode);
        final data = jsonDecode(response.body);
        // log(data);
        // log('data:$data');
        print('data userId: ${data['user_id']}');
        print('data: ${data['data']['access']}');
        await prefs.setString('token', data['data']['access']);
        // print('token ${data['token']}');
        await prefs.setString('userID', data['user_id'].toString());
        currentUserId = data['user_id'].toString();
        token = data['data']['access'];

        print('currentUserId: $currentUserId ');
        print('token: $token ');
        // print('userID ${data['userID']}');
        // print('dataaa: $data');
        return right('Login successful');
      } else {
        print('fffffffffffffffff');
        return left('Login failed with status code ${response.statusCode}');
      }
    } on Exception catch (e) {
      print('errrrrrrrror: ${e.toString()}');
      return left('Exception occurred: ${e.toString()}');
    } catch (e) {
      print('error1: ${e.toString()}');
      return left('An error occurred: ${e.toString()}');
    }
  }






}