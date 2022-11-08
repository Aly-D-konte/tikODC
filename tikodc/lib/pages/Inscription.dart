import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tikodc/pages/InscriptionPhoneUser.dart';


 class Inscription extends StatelessWidget{
  const Inscription({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      
          appBar: AppBar(
            centerTitle: true,

            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white,),
              onPressed: () => Navigator.of(context).pop(),
            ),

            title:  const Text('Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                
              ),
            ),
            backgroundColor: Colors.white,
          ),
            backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.person_outline,
                color: Colors.grey,
                size: 100.0,
                ),
                const SizedBox(height: 15.0,
                ),
                const Text('Créer un compte',
                style: TextStyle(
                  color: Colors.black87,)
                ),
                const SizedBox(height: 15.0,
                ),
                SizedBox(
                  width:200.0, //width: MediaQuery.of(context).size.width-40,
                  height: 50,
                 child: Builder(
                  builder: (context) => ElevatedButton(
                  onPressed: () {
                    _openPopup(context);
                    
                  },
                  style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.red[500],
                    )),
                  //textColor: Colors.white,
                  child: const Text('S\'inscrire'),
                 ),
                ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),  
       );
    }        
 }

 void _openPopup(context) {
   showModalBottomSheet(context: context,
   isScrollControlled: true, 
   backgroundColor: Colors.white,
   builder: (BuildContext bc){
    return Container(
       height: MediaQuery.of(context).size.height * .90,      
       child: Padding(padding: const EdgeInsets.all(12.0),
       child: Column(
        children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
                const Icon(
                  Icons.more,
                   color: Colors.black,
                ),
              ],
              ),
              const SizedBox(height: 25.0,
              ),
              const Text(
                'Inscrivez-vous à TikODC',
             style: TextStyle(fontSize: 25.0, color: Colors.black,), 
             ),
             const SizedBox(
               height: 10.0,
             ),
             const Text(
              'Créez un profil, suivez d\'autres comptes, créez vos propres vidéos et bien plus encore.',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black54
              ),
              textAlign: TextAlign.center,
              ),
          const SizedBox(
            height: 10.0,
          ),
              ButtonTheme(
                minWidth: 250.0,
                child: ElevatedButton(

                  onPressed: () {
                    Navigator.of(context).push( MaterialPageRoute(builder: (context) => InscriPhoneUser()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                      ),
                      ),
                  primary: Colors.white,
                  ) ,
                  //onPressed: () => {},
                 // elevation: 0.0,
                  
                  child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.user,
                        color: Colors.black,
                      ),
                      ),
                     Expanded(flex: 2, child: Text('Numéro de téléphone/e-mail/nom d\'utilisateur ',
                      style: TextStyle(fontSize: 14.0,
                      color: Colors.black87),),),
                    ],
                  ),
                  ),
                ),
                ),
          const SizedBox(
            height: 15.0,
          ),

          ButtonTheme(
            minWidth: 250.0,
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                 elevation: 0.0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              primary: Colors.white,
              ),
             
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.facebook,
                      color: Colors.blue,
                    ),
                    ),
                    Expanded(flex: 2, child: Text('Continuer avec Facebook',
                      style: TextStyle(fontSize: 14.0,
                          color: Colors.black87),),),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),

          ButtonTheme(
            minWidth: 250.0,
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                 elevation: 0.0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              primary: Colors.white,
              ),
             
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.google,
                      color: Colors.red,
                    ),
                    ),
                    Expanded(flex: 2, child: Text('Continuer avec Google',
                      style: TextStyle(fontSize: 14.0,
                          color: Colors.black87),),),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),

          ButtonTheme(
            minWidth: 250.0,
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              primary: Colors.white,
              ),
              
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.twitter,
                      color: Colors.lightBlue,
                    ),
                    ),
                    Expanded(flex: 2, child: Text('Continuer avec Twitter',
                      style: TextStyle(fontSize: 14.0,
                          color: Colors.black87),),),
                  ],
                ),
              ),
            ),
          ),
           ButtonTheme(
            minWidth: 250.0,
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
              primary: Colors.white,
              ),
              
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Expanded(flex: 1, child: FaIcon(FontAwesomeIcons.instagram,
                      color: Colors.red,
                    ),
                    ),
                    Expanded(flex: 2, child: Text('Continuer avec Instagram',
                      style: TextStyle(fontSize: 14.0,
                          color: Colors.black87),),),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
                    height: 100,
                  ),
          SizedBox(
                    child: Text(
                      "En continuant, tu acceptes nos Conditions d’utilisatation et " +
                          "reconnais avoir lu notre Politique de Confidentialité pour " +
                          "savoir comment nous collectons, utilisons et partageons " +
                          "tes données",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                   Container(
                    height: 70,
                    // padding: const EdgeInsets.only(top: ),
                    // color: Colors.blue,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Vous avez déjà un compte ?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          

                          SizedBox(
                            width: 120.0,
                            child:Container(
                              child: InkWell(
                                onTap: () {
                                   Navigator.of(context).push( MaterialPageRoute(builder: (context) => InscriPhoneUser()));
                                },
                                child: Text('Connexion',
                                style: TextStyle(color: Colors.red),)),
                            
                    )
                            
                          
                          ),
                        ]),
                  ),
        ],
        ),
       ), 
      );
   });
 }