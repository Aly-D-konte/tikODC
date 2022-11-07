import 'package:flutter/material.dart';
import 'package:tikodc/pages/NumeroPad.dart';
import 'package:tikodc/pages/home.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  State<VerifyPhone> createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  String code = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, size: 30, color: Colors.black),
          ),
          title: Text(
            'Verifiez votre téléphone',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          textTheme: Theme.of(context).textTheme,
        ),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Expanded(
                  child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child: Text(
                        "Le code est envoyer à " + widget.phoneNumber,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF818181),
                        ),
                      ),
                    ),
                    Expanded(
                        child: GestureDetector(
                           onTap: () {
                               Navigator.of(context).push( MaterialPageRoute(builder: (context) => UserHomePage()));
                             
                            },
                          child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          buildCodeNumberbox(
                              code.length > 0 ? code.substring(0, 1) : ""),
                          buildCodeNumberbox(
                              code.length > 1 ? code.substring(1, 2) : ""),
                          buildCodeNumberbox(
                              code.length > 2 ? code.substring(2, 3) : ""),
                          buildCodeNumberbox(
                              code.length > 3 ? code.substring(3, 4) : ""),
                      ],
                    ),
                        )),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Je n'ai pas réçu le code?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF818181),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          GestureDetector(
                            onTap: () {
                              print("Renvoyer le code à l'utilisateur");
                            },
                            child: Text(
                              "Renvoyer le code",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
              Container(
                height: MediaQuery.of(context).size.height * 0.13,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print("Verifié et créer un compte action");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFFFDC3D),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                )),
                            child: Center(
                              child: Text(
                                'Verifié et créer un compte',
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
                      if (code.length < 4) {
                        code = code + value.toString();
                      }
                    } else {
                      code = code.substring(0, code.length - 1);
                    }
                  });
                },
              )
            ])));
  }
}

Widget buildCodeNumberbox(String codeNumber) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: SizedBox(
      width: 60,
      height: 60,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFF6F5FA),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 25.0,
                  spreadRadius: 1,
                  offset: Offset(0.0, 0.75))
            ]),
        child: Center(
          child: Text(
            codeNumber,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
      ),
    ),
  );
}
