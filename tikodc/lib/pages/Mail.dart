import 'package:flutter/material.dart';
import 'package:tikodc/pages/ContinuerAvecPhone.dart';

 class Mail extends StatelessWidget {
  const Mail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const contenuColor = Colors.black;
    const backgroundColor = Colors.white;
    const buttonColor = Colors.black;

    return  Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            children: [
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16,),

                child:  Column(
                  children:  [

                     TextFormField(
                       style: const TextStyle(color: Colors.black),
                       decoration: const InputDecoration(
                           fillColor: Colors.black,
                           border: UnderlineInputBorder(
                             borderSide: BorderSide(
                                 style: BorderStyle.solid, width: 2,
                                color: Colors.black
                             ),
                           ),

                           labelText: 'Nom / E-mail',
                           labelStyle: TextStyle(color: Colors.black)
                       ),

                     ),

                    const SizedBox(height: 25,),

                    TextFormField(
                      style: const TextStyle(
                        color: Colors.black
                      ),
                      decoration: const InputDecoration(
                          fillColor: Colors.black,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid, width: 2,
                                color: Colors.black
                            ),
                          ),

                          labelText: 'Mot de passe',
                          labelStyle: TextStyle(color: Colors.black)
                      ),

                    ),

                  ],
                ),

              ),
              SizedBox(
                            width: 140.0,
                            
                            child:Container(
                              
                              child: InkWell(
                                onTap: (){
                                   Navigator.of(context).push( MaterialPageRoute(builder: (context) =>PhoneVerification()));
                                },
                                child: Text('Mot de passe oublié?',
                                
                                style: TextStyle(color: Colors.red,
                                ),)),
                            
                    )
                            
                          
                          ),
              
              // const Padding(
              //   padding: EdgeInsets.fromLTRB(0.0, 0.0, 160, 0.0),
              //   child: Text('Mot de passe oublié?',
              //     style: TextStyle(
              //       fontSize: 16,

              //       color: Colors.red,
              //     ),
              //   ),
              // ),
              

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),

                child: ElevatedButton(onPressed: () {  },
                  style: ElevatedButton.styleFrom(
                    primary: buttonColor,
                    elevation: 2,
                  ),
                  child: const Text('Connexion',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ]
        )

    );
  }
}