import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/fruta.dart';

class FrutaWidget extends StatelessWidget {
  final Fruta fruta;
  final Function onTap;


  const FrutaWidget(
      {Key? key,
      required this.fruta,
      required this.onTap,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
      },
      onLongPress: () {
      },
      onTap: () {
        onTap(fruta);
      },
      
      child: Container(
      
        padding: const EdgeInsets.all(10.0),
        height: 80.0,

        child: Row(
       
          
          children: <Widget> [
            
            
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                
              ),
              
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Name : ${fruta.name}', style: fromTextStyle),
                   Text('Beneficios :${fruta.beneficios}', style: subjectTextStyle),
                  Text('Tipo : ${fruta.tipo}',
                      style: fromTextStyle),
                 
                ],
              ),
            )
       
          ],
        ),
      ),
    );
  }
}
