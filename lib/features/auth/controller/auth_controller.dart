import 'package:cabzing/features/auth/repository/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../screen/dashboard.dart';

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
       , (r) {
         Navigator.pushAndRemoveUntil(
             context,
             MaterialPageRoute(
               builder: (context) => DashboardScreen(),
             ),
                 (route) => false);
       });
}


}