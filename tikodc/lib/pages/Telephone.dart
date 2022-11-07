import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class TelephoneWidget extends StatelessWidget {
  const TelephoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 25, vertical: 16,),
            child: Column(
              children: [
                IntlPhoneField(
                  decoration: InputDecoration(
                  labelText: 'Numéro de Téléphone',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                  ),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                  print(phone.completeNumber);
              },
              ),
                // TextFormField(
                //    style: const TextStyle(color: Colors.red),
                //        decoration: const InputDecoration(
                //            fillColor: Colors.orange,
                //            border: UnderlineInputBorder(
                //              borderSide: BorderSide(
                //                  style: BorderStyle.solid, width: 1
                //              ),
                //            ),

                //            labelText: 'Telephone',
                //            labelStyle: TextStyle(color: Colors.black)
                //        ),
                // )
              ]),
          )
        ],
      ),
    );
  }
}