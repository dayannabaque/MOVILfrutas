import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/fruta.dart';

class DetailScreen extends StatelessWidget {
 
  final Fruta fruta;

  const DetailScreen({Key? key, required this.fruta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(fruta.name),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Vitaminas que contiene: ${fruta.vitaminas}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('Beneficios que aporta : ${fruta.beneficios}', style: subjectTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              Text('Tipo de fruta : ${fruta.tipo}', style: subjectTextStyle),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('Semanas recomendables: ${fruta.semanas}', style: subjectTextStyle),
              const SizedBox(height: 20.0),
                 ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(241, 167, 18, 155), // background
                onPrimary: Color.fromARGB(255, 23, 1, 1), // foreground
              ),
              onPressed: () { 
                Navigator.pop(context);
              },
              child: Text('Done'),
)
            ],
            
          ),
          
        ))
        ;
    }
}
