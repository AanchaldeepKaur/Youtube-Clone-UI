import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_youtube/Custom/homecustom.dart';
import 'package:flutter_youtube/Custom/profile_custom_buttons.dart';
import 'package:flutter_youtube/const/style.dart';
import 'package:flutter_youtube/pages.dart/shorts.dart/videoshorts.dart';


class OnTapScr extends StatefulWidget {
  const OnTapScr({super.key});

  @override
  State<OnTapScr> createState() => _OnTapScrState();
}

class _OnTapScrState extends State<OnTapScr> {
  @override
  Widget build(BuildContext context) {
    var myheight= MediaQuery.of(context).size.height;
    var mywidth= MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(height: myheight/3,width: mywidth,color: Colors.black,),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white,),
              )),
               Positioned(
                left: 210,
                top: 20,
                 child: Container(
                  height: 40,
                  width: 300,
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: Icon(Icons.toggle_off, color: Colors.white,),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: Icon(Icons.cast, color: Colors.white,),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: Icon(Icons.closed_caption_outlined, color: Colors.white,),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: Icon(Icons.settings_outlined, color: Colors.white,),
                       ),
                                 
                     ],
                   ),
                 ),
               ),
                  Positioned(
              top: 130,left: 180,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context) => VideoScr(),));
                },
                child: Icon(Icons.play_arrow, color: Colors.white,))
              ),
               Positioned(
              top: 250,left: 370,
              child: Icon(Icons.fullscreen, color: Colors.white,))
          
          
          
            ]
            ),
            Container(
              height:522,
              width: mywidth,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                  height: myheight/14,
                  width: mywidth,
                  child: Row(
                    children: [
                      Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), 
                        image: DecorationImage(
                        image: AssetImage('assets/profileimage2.jpg'),
                        fit: BoxFit.cover),
                        ),),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 17),
                          child: Container(height: 20,width: 200,child: Text('Jobs & Buisness',style: TextStyle(fontSize: 16),),),
                        ),
                        Container(
                          height: 20,
                          width: 200,
                          child: Row(
                          children: [
                            Text('Sponsored',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                            Text(' . ') ,
                            Text('Installed', style: TextStyle(fontSize: 12),)       
                          ],
                        ),)
                      ],
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Color.fromARGB(255, 232, 230, 230),
                      child: Icon(Icons.keyboard_arrow_down_outlined),
                      ),
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Container(
                        height: 35,
                        width: 80,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue),
                      child: Center(child: Text('Open app', style: textStyleW700.copyWith(color: Colors.white),)),),
                    )
                    ],
                  ),
                ),
                Divider(height: 5,thickness: 2,color: const Color.fromARGB(255, 194, 192, 192),),
                Container(
                  height: myheight/12,
                   width: mywidth,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('How to start App Development ? Complete RoadMap | 2023-2024', style: textStyleW700.copyWith(fontSize: 18),),
                ),),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('1200 views', style: TextStyle(color: Colors.grey),),
                  ),
                  SizedBox(width: 10,),
                  Text('6 weeks ago',style: TextStyle(color: Colors.grey),),
                  SizedBox(width: 20,),
                  Text('more',style: textStyleW700,)
                ],),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/round_profil_picture_after_.webp'),
                          radius: 17,),
                      ),
                      SizedBox(width: 10,),
                      Text('Channel Name', style: textStyleW700,),
                      SizedBox(width: 10,),
                      Text('4k', style: TextStyle(color: Colors.grey),)
                    ],),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(height: 30,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
                                            child: Center(child: Text('Subscribe', style: textStyleW700.copyWith(color: Colors.white),)),),
                      )

                  ],
                ),
                SizedBox(height: 10,),

                Container(height: 30,width: mywidth,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10,),
                    Profilebuttons(text: '220', iconData: Icons.thumb_up_outlined,),
                    SizedBox(width: 10,),
                    Profilebuttons(text: 'Share', iconData: Icons.share,),
                    SizedBox(width: 10,),
                    Profilebuttons(text: 'Download', iconData: Icons.download,),
                    SizedBox(width: 10,),
                    Profilebuttons(text: 'Clip', iconData: Icons.cut_outlined,),
                    SizedBox(width: 10,),
                    Profilebuttons(text: 'Save', iconData: Icons.bookmark_outline,),
                    SizedBox(width: 10,),
                  ],
                  ),),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: myheight/9,width: mywidth,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color:Color.fromARGB(255, 232, 230, 230)),
                      child: Column(
                        children: [
                          Container(width: mywidth,height: 40,child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Comments',style: textStyleW700.copyWith(fontSize: 16), ),
                              ),
                              Text('26', style: TextStyle(color: const Color.fromARGB(255, 60, 60, 60)),)
                            ],
                          ),),
                          Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/profileImage.png'),
                                radius: 14,),
                            ),
                            Text('Thank you for making this video')
                          ],)
                        ],
                      ),
                    ),
                  ),
                  
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => OnTapScr(),));
              },
               child: home(
                 context,
                           preview_image: 'assets/Duke1.jpg',
                           video_title: 'DUNE Part-2',
                           profile_picture: 'assets/profileImage.png',
                           views: '2.7M views',
                           time: '5days ago',
                           Account_name: 'Filmi Duniya'
                           ),
             ),
             home(
               context,
            preview_image: 'assets/image_2.jpg',
            video_title: 'Role of AI',
            profile_picture: 'assets/profileImage.png',
            views: '5.7M views',
            time: '7 days ago',
            Account_name: 'Discovery'
            ),
                  
                  
                ],
              ),
            ),)
        ],
      ),

    );
  }
}