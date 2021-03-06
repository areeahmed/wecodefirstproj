import 'package:flutter/material.dart';
class HelloKurdistanApp extends StatefulWidget {
  HelloKurdistanApp({Key? key}) : super(key: key);

  @override
  State<HelloKurdistanApp> createState() => _HelloKurdistanAppState();
}

class _HelloKurdistanAppState extends State<HelloKurdistanApp> {
  String name = "Ari Ahmed";
  int R = 255, G = 190, B = 143 ; double O = 100;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('My First Project'),),
        ),
        body: Center(
          child:Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 200, 20, 20),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image:  NetworkImage(
                'https://ak.picdn.net/shutterstock/videos/1056997733/thumb/1.jpg'
               ),
              ),
              border: Border.all(
                style: BorderStyle.solid
                
              ),
              borderRadius: const BorderRadius.all(Radius.circular(100))
             ),
             width: 300,
             height: 171,
            ),
             Text(
              "Hello $name",
              style: TextStyle(
                fontFamily: 'alumni',
                fontSize: 25,
                color: Color.fromRGBO(R, G, B, O)
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: ElevatedButton(onPressed: () {
                
              setState(() {
                if(name == "Kurdistan")
                {
                  name = "Ari Ahmed";
                  R = 199;
                  G = 127;
                  B = 75;
                }
                else if(name == "Ari Ahmed"){
                  name = "Kurdistan";
                  R = 255;
                  G = 190;
                  B = 143;
                }
                
                
              });
            },
             child: const Text("Change the name",))
            )
          ],
        ),
      ),
      ),
    );
  }
}