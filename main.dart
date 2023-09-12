import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boxMethod('box 1', Alignment.bottomRight),
                boxMethod('box 2', Alignment.bottomLeft),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boxMethod('box 3', Alignment.topRight),
                boxMethod('box 4', Alignment.topLeft),
               ],
             ),
            ],
          ),
          Center(child:  boxMethod("hello wordl", Alignment.center, true)),        
        ],
      ),
    );
    //throw UnimplementedError();
  }

  Container boxMethod(String name, Alignment derection, [bool boxRadius = false]) {
    return Container(
      decoration: BoxDecoration(
        color: boxRadius 
            ? const Color.fromARGB(255, 34, 211, 246)
            : Colors.green,  
        borderRadius: BorderRadius.circular(boxRadius ? 100 : 0),
      ),
      alignment: derection,
      width: 160,
      height: 160,
      child: Text(
        name,
        style: const TextStyle(color: Colors.pink, fontSize: 24),
      ),
    );
  }
}
