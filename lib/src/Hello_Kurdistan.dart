import 'package:flutter/material.dart';
class HelloKurdistanApp extends StatelessWidget {
  const HelloKurdistanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello', textAlign: TextAlign.center,),
        ),
        body: Center(
          child:Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 250, 20, 20),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image:  NetworkImage(
                'https://ak.picdn.net/shutterstock/videos/1056997733/thumb/1.jpg'
               ),
              ),
              border: Border.all(
                style: BorderStyle.solid
                
              ),
              borderRadius: const BorderRadius.all(Radius.circular(25))
             ),
             width: 300,
             height: 171,
            ),
            const Text(
              "Hello Kurdistan",
              style: TextStyle(
                fontFamily: 'alumni',
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}