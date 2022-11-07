import 'package:flutter/material.dart';

class  UserInboxPage extends StatelessWidget {
  const UserInboxPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Text("La partie inbox",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 50
      ),),
      )  
    );
  }
}