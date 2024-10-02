import 'package:flutter/material.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override

  Widget build(BuildContext context){

    return const MaterialApp(

      title: "Insta",
      home: HomeScreen(),

    );
  }
}

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(

        title: const Text("Insta stories"),
        backgroundColor: Colors.blue,

      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Row(children: [

          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(

              color: Colors.amber,
              shape: BoxShape.circle
            ),
          ),
          
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(

              color: Colors.amber,
              shape: BoxShape.circle
            ),
          ),
          
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(

              color: Colors.amber,
              shape: BoxShape.circle
            ),
          ),
          
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(

              color: Colors.amber,
              shape: BoxShape.circle
            ),
          ),
          
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(

              color: Colors.amber,
              shape: BoxShape.circle
            ),
          ),
          
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(

              color: Colors.amber,
              shape: BoxShape.circle
            ),
          ),
          
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(

              color: Colors.amber,
              shape: BoxShape.circle
            ),
          ),
        ],),
      )
    );
  }

}