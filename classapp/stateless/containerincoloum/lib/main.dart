import 'package:flutter/material.dart';

void main(){

  runApp(const ColumnApp());
}

class ColumnApp extends StatelessWidget {

  const ColumnApp({super.key});

  @override

  Widget build(BuildContext context){

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column App"),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),

              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),

              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),

              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),

              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amberAccent,
              ),

          ],),
          ),
      ),
    );
  }
}