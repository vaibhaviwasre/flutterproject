import 'package:flutter/material.dart';

void main(){

  runApp(const ContainerApp());
}

class ContainerApp extends StatelessWidget{

  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(

          title: const Text("Container App"),
          backgroundColor : Colors.blue,

        ),

        body: Center(
          
          child: Container(

            height: 200,
            width: 200,
            color: Colors.amber,
          ),
        ),
        ),
    );
  }
}


    
