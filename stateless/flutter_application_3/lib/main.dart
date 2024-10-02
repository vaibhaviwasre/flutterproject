import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Indian Flag",
      home: MyScreen(),
    );
  }
}
class MyScreen extends StatelessWidget {
  const MyScreen({super.key});
  @override
  Widget build (BuildContext context){
return Scaffold(
  appBar: AppBar(
    title: const Text("Indian Flag"),
    centerTitle: true,
    backgroundColor: Colors.blue,

  ),
  body: Center(
    child:Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 430,width: 7,color: Colors.black),
        Column(
          children: [
            const SizedBox(
              height: 142,
            ),
        Container(
          width: 300,
          height: 45,
          color: Colors.orange,
        ),
        Container(
          width: 300,
          height: 45,
          color: Colors.white,
          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png",
          ),
          ),
          Container(
            width: 300,
            height: 45,
            color: Colors.green,
          )
        
      ],
    ),]
  ),
  )
);
  }
}
