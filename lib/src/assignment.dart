import 'package:flutter/material.dart';

class SliderWDApp extends StatefulWidget {
  const SliderWDApp({Key? key}) : super(key: key);

  @override
  State<SliderWDApp> createState() => _SliderWDAppState();
}
var slide1 = "assets/S1.jpg";
var slide2 = "assets/S2.jfif";
var slide3 = "assets/S3.webp";
var mainViewOfPic = "assets/MAIN.jfif";
class _SliderWDAppState extends State<SliderWDApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Main View Of Picture
            Container(
                  child: Image.asset(
                  mainViewOfPic,
                height: 350,
                width: 400,
                ),
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            ),
            // Buttons of slider
            
          Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 100, 5, 40),
                    child: ElevatedButton(onPressed: () {
                    setState(() {
                      mainViewOfPic = slide1;
                    });
                  }, 
                  child: Image.asset(
                    slide1,
                    height: 80,
                    width: 80,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 100, 5, 40),
                    child: ElevatedButton(onPressed: () {
                    setState(() {
                      mainViewOfPic = slide2;
                    });
                  }, 
                  child: Image.asset(
                    slide2,
                    height: 80,
                    width: 80,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 100, 5, 40),
                    child: ElevatedButton(onPressed: () {
                    setState(() {
                      mainViewOfPic = slide3;
                    });
                  }, 
                  child: Image.asset(
                    slide3,
                    height: 80,
                    width: 80,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}