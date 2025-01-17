import 'dart:convert';

import 'package:cabzing/features/auth/repository/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../screen/dashboard.dart';
import 'package:http/http.dart' as http;

import '../screen/login.dart';


final authControllerProvider = StateProvider((ref) {
return AuthController(repository: ref.watch(authRepositoryProvider));
});


class AuthController{
final AuthRepository _repository;

AuthController({
  required AuthRepository repository
}): _repository = repository;


 createLogin(String name,String password,BuildContext context) async {
   var data = await _repository.createLogin(name, password);
   data.fold((l) {
     return ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text("Login failed")),
     );
   }
       , (r) async {
     var headers = {
       'Authorization': 'Bearer $token'
     };
     var request = http.Request('GET', Uri.parse('https://www.api.viknbooks.com/api/v10/users/user-view/$currentUserId'));

     request.headers.addAll(headers);

     http.StreamedResponse response = await request.send();

     if (response.statusCode == 200) {
       var profile = await response.stream.bytesToString();
       print('userMap $profile');

       profileData = jsonDecode(profile);

       //  a = {
       //   'name': profileData['data']['first_name'],
       //   'email': profileData['data']['email'],
       //   'photo': profileData['customer_data']['photo']
       // };


     }
       if(profileData!=null) {
       Navigator.pushAndRemoveUntil(
         context,
         MaterialPageRoute(
           builder: (context) => DashboardScreen(),
         ),
             (route) => false,
       );
     }else{
       print("Login failed with no data" );
     }
       });
 }
}