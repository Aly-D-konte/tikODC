 import 'package:flutter/material.dart';

class  UserNowPage extends StatelessWidget {
  const UserNowPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Text("La Partie amis",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 50
      ),),
      )  
    );
  }
}