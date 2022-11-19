import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../widgets/fruta_widget.dart';
import 'detail_screen.dart';
import '../model/fruta.dart';

class ListScreen extends StatefulWidget {


  const ListScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  
  
  var frutas = Backend().getFrutas();
 

  void showDetail( Fruta fruta) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen( fruta: fruta,);
    }));
    
    setState(() {
 
      frutas = Backend().getFrutas();
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), 

       
      ),

      body: ListView.separated(
        itemCount: frutas.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
          itemBuilder: (BuildContext context, int index) => FrutaWidget(
          fruta: frutas[index],
          onTap: showDetail,  
  
        ),
    
      ),  

    );  
  }
}
