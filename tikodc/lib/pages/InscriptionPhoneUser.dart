import 'package:flutter/material.dart';
import 'package:tikodc/pages/Mail.dart';
import 'package:tikodc/pages/Telephone.dart';



class InscriPhoneUser extends StatelessWidget {
   const InscriPhoneUser ({Key? key});
 
  @override
  Widget build(BuildContext context) {
  
 const contenuColor = Colors.black;
 const backgroundColor = Colors.white;


    return DefaultTabController(
      length: 2,
         child: Scaffold(

            appBar: AppBar(
            
            centerTitle: true,
                leading: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black,),
                    onPressed: () => Navigator.of(context).pop(),
                    ),
                    
            title:  const Text('Connexion',
            
            style: TextStyle(
            fontSize: 20,
            
            fontWeight: FontWeight.w700,
            color: contenuColor,
      
            ),
            ),
            backgroundColor: Colors.transparent,
      
                  elevation: 0,
            ),

           backgroundColor: backgroundColor,

           body: Column(
            children: [
              const SizedBox(height: 40,),

              TabBar(tabs: [
                  Padding(padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0 , 15),
                   child: Text('Téléphone',
                      style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 15),
                    child: Text('E-mail/Nom d\'utilsateur ',
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    ),
                ),
              ],
              ),

              const Expanded(
                child: TabBarView(
                children: [
                  TelephoneWidget(),
                  Mail(),
                ],
              ),
              ),
               ],



               ),
         ),
    );
  }
}