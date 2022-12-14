import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:tikodc/pages/Inscription.dart';

class  UserProfilePage extends StatelessWidget {
  const UserProfilePage ({super.key});

 
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('Profile', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add, color: Colors.black),
          actions: const [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(Icons.menu, color: Colors.black),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //profile photo
            Container(
              height: 120,
              width: 120,
              child:
              Icon(Icons.camera_alt, color: Colors.grey[800], size: 70,),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),

            ),
            // username
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text('@nom d\'utilisateur',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            // number of following, followers, likes

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Text('0', style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22) ,
                        ),
                        SizedBox(height: 5,),
                        Text(' Suivis ',
                          style: TextStyle(
                              color: Colors.grey,fontSize: 15) ,
                        ),
                      ],),
                  ),
                ),

                Expanded(
                  child: Container(
                    child: Column(children: [
                      Text('0', style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22) ,
                      ),
                      SizedBox(height: 5,),
                      Text('Abonn??s',
                        style: TextStyle(
                            color: Colors.grey,fontSize: 15) ,
                      ),
                    ],),
                  ),
                ),

                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(children: [
                      Text('0', style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22) ,
                      ),
                      SizedBox(height: 5,),
                      Text(' J\'aime ',
                        style: TextStyle(
                            color: Colors.grey,fontSize: 15) ,
                      ),
                    ],),
                  ),
                ),

              ],),

            SizedBox(height: 15,),

            // buttons -> edit profite, inta links, bookmark

           /* Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child:
                  Text('Modifier le profil', style: TextStyle(color: contenuColor, fontSize: 18),),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child:
                    Icon(Icons.camera_alt, color: Colors.grey[800],),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(15),
                  child:
                  Icon(Icons.bookmark_border, color: Colors.grey[800],),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),

              ],
            ),*/

            SizedBox(height: 80,),
          

            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(width: 20.0, height: 100.0),
                DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Horizon',
                      color: Colors.black
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('Retrouve tes favorites'),
                      RotateAnimatedText('Consulte tes suivis'),
                      RotateAnimatedText('Exprime ta cr??ativit??'),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(width:200.0, //width: MediaQuery.of(context).size.width-40,
              height: 50,
              child: Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Inscription()));
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      //  textColor: Colors.white,

                    );
                  },

                  
                  child: const Text('S\'inscrire ou se connecter'),
                ),
              ),
            ),


            // default tab controller

           /* TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3, color: Colors.black,),
              ),
              Tab(
                icon: Icon(Icons.favorite, color: Colors.black,),
              ),
              Tab(
                icon: Icon(Icons.lock_outline_rounded, color: Colors.black,),
              ),
            ],
            ),*/

           /* Expanded(child: TabBarView(
              children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ],
            ),
            ),*/



          ],
        ),
        //child: Center(child: Text('Profile', style: TextStyle(fontSize: 20, color: contenuColor,),),),
      ),
    );
  }
}

