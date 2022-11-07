import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tikodc/pages/NumeroPad.dart';
import 'package:tikodc/pages/verify_phone.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  String phoneNumber = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                  0.7,
                  0.9
                ],
                    colors: [
                  Color(0xFFFFFFF),
                  Color(0xFFF7F7F7),
                ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 130,
                  child: Image.asset('assets/images/logom.png'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 64),
                  child: Text(
                    'Vous avez reçu un code de 4 chiffre ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF818181),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.13,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 230,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Entrer votre numero dde télehone',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        phoneNumber,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                     onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => VerifyPhone(phoneNumber: phoneNumber,)),
                        );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFDC3D),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Continuer',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                )
              ],
            ),
          ),
        ),
        NumeroPad(
          onNumberSelcted: (value) {
            setState(() {
              if (value != -1) {
                phoneNumber = phoneNumber + value.toString();
              } else {
                phoneNumber = phoneNumber.substring(0, phoneNumber.length - 1);
              }
            });
          },
        ),
      ])),
    );
  }
}
