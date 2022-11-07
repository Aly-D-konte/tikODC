import 'package:flutter/material.dart';

class  UserPlusPage extends StatelessWidget {
  const UserPlusPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Text("La partie live",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 50
      ),),
      )  
    );
  }
}