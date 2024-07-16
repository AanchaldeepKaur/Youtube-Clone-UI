import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_youtube/pages.dart/homepage.dart/home.dart';


class SplashScrn extends StatefulWidget {
  const SplashScrn({super.key});

  @override
  State<SplashScrn> createState() => _SplashScrnState();
}

class _SplashScrnState extends State<SplashScrn> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage(),));
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/Youtube_logo_splash.png'))
                ),
              ),
            )
          ],
         ),
    );
  }
}
