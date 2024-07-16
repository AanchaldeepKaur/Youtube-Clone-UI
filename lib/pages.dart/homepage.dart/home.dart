import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_youtube/const/colors.dart';
import 'package:flutter_youtube/pages.dart/Account.dart/profilepage.dart';
import 'package:flutter_youtube/pages.dart/homepage.dart/homescreen.dart';
import 'package:flutter_youtube/pages.dart/shorts.dart/shortstories.dart';
import 'package:flutter_youtube/pages.dart/subscription.dart/subscribe.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File ? selectedimage ;
  
     int initialindex = 0;
     void bottomNavbar (index){
      setState(() {
        initialindex= index;
      });
     }

  @override
  Widget build(BuildContext context) {
  final List<Widget>screens = [
    Homescr1(),
    Shorts(),
    Text('dfujvn'),
    Subscribe(),
    Profilescreen()
  ];
  
    return Scaffold(
      body:screens[initialindex],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: initialindex,
      type: BottomNavigationBarType.fixed,
      onTap: bottomNavbar,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', activeIcon:Icon(Icons.home,color: appColor,)),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/youtube-shorts-logo-15253.svg',height: 25,), label: 'Shorts', activeIcon: SvgPicture.asset('assets/youtube-shorts-logo-15251.svg',height: 25,)),
        BottomNavigationBarItem(icon: IconButton(
          onPressed:(){
         _cameraimage();
        }, icon: Icon(Icons.add_circle_outline,size: 40)), label: ' ', activeIcon: Icon(Icons.add_circle,color: appColor,size: 40,)),
        BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions', activeIcon: Icon(Icons.subscriptions,color:appColor)),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'You', activeIcon: Icon(Icons.person,color: appColor,)),

      ]),
    );
  }
   Future _cameraimage()async{
  final returnedImage   = await ImagePicker().pickImage(source:ImageSource.camera);
  if(returnedImage== null) return;
  setState(() {
    selectedimage = File(returnedImage.path);
  });
  }

}