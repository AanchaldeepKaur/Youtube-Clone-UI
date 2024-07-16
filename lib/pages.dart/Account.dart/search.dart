//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_youtube/Custom/searchbox.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
  var myheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
            },
          child: Icon(Icons.arrow_back)),
        title: Container(
          height: 35,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text('Search You Tube', style: TextStyle(color: Color.fromARGB(255, 68, 68, 68),fontSize: 16),),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 213, 210, 210)
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 7.0),
            child: Container(
               height: 38,
            width: 38,
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Icon(Icons.mic)
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(255, 213, 210, 210)
            ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: myheight/1.05,
          width: 500,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              searchbox(mylabel: 'Lunch Recipies', search_image: 'assets/Food_image.jpg'),
              searchbox(mylabel: 'Nature World', search_image: 'assets/Nature.jpeg'),
              searchbox(mylabel: 'Duke Part-2 Movie', search_image: 'assets/Duke1.jpg'),
              searchbox(mylabel: 'LifeStyle', search_image: 'assets/Lifestyle.jpg'),
              searchbox(mylabel: 'YouTube Clone', search_image: 'assets/youtube-logo.png'),
              searchbox(mylabel: 'Books of 2024', search_image: 'assets/Books_images.jpeg'),
              searchbox(mylabel: 'Lunch Recipies', search_image: 'assets/Food_image.jpg'),
              searchbox(mylabel: 'Nature World', search_image: 'assets/Nature.jpeg'),
              searchbox(mylabel: 'Duke Part-2 Movie', search_image: 'assets/Duke1.jpg'),
              searchbox(mylabel: 'LifeStyle', search_image: 'assets/Lifestyle.jpg'),
              searchbox(mylabel: 'YouTube Clone', search_image: 'assets/youtube-logo.png'),
              searchbox(mylabel: 'Books of 2024', search_image: 'assets/Books_images.jpeg'),
               searchbox(mylabel: 'Lunch Recipies', search_image: 'assets/Food_image.jpg'),
              searchbox(mylabel: 'Nature World', search_image: 'assets/Nature.jpeg'),
              searchbox(mylabel: 'Duke Part-2 Movie', search_image: 'assets/Duke1.jpg'),
              searchbox(mylabel: 'LifeStyle', search_image: 'assets/Lifestyle.jpg'),
              searchbox(mylabel: 'YouTube Clone', search_image: 'assets/youtube-logo.png'),
              searchbox(mylabel: 'Books of 2024', search_image: 'assets/Books_images.jpeg'),
               
               
            ],
          ),
        ),
      ),
    );
  }
}