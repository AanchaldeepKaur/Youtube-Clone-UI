import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_youtube/Custom/profile.dart';
import 'package:flutter_youtube/Custom/profile_custom.dart';
import 'package:flutter_youtube/Custom/profile_custom_buttons.dart';
import 'package:flutter_youtube/Custom/shortcustom.dart';
import 'package:flutter_youtube/const/style.dart';
import 'package:flutter_youtube/pages.dart/Account.dart/notification.dart';
import 'package:flutter_youtube/pages.dart/Account.dart/search.dart';
import 'package:flutter_youtube/pages.dart/Account.dart/settings.dart';


class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myheight= MediaQuery.of(context).size.height;
    var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
     body: NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled) {
      return[
         SliverAppBar(actions: [
            IconButton(
                onPressed: (){ }, 
              icon:GestureDetector(
                onTap: () {
                  showDialog(context: context, builder:(context) => AlertDialog(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(),
                    title: Text('Connect to a Device'),
                    content: Container(
                      height: 120,
                      width: 200,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 110),
                            child: Text('No Device Found'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 40,
                              child: Row(
                                children: [
                                  Icon(Icons.tv_outlined),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text('Link with Tv Code'),
                                  )
                                ],
                              ),
                            ),
                          ),
                            Container(
                            height: 40,
                            child: Row(
                              children: [
                                Icon(Icons.info_outline),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text('Learn more'),
                                )
                              ],
                            ),
                                                      )
                        ],
                      ),
                    ),
                  ),);
                },
                child: Icon(Icons.cast)
                )
                ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => NotificationScreen(),));
              },
              child: Icon(Icons.notifications_outlined)),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context) => Search(),));
            },
            child: Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.all(15),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Settings(),));
              },
              child: Icon(Icons.settings_outlined)),
          ),
          
        ],)
      ];
     }, body:SingleChildScrollView(
       child: Column(
        children: [
          Container(
            height: myheight/7,width: mywidth,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/Screenshot_2024_0325_203313.png'),),
                ),
                Container(
                  height: myheight/13,width: mywidth/2,
                  child: Column(children: [
                    Container(
                      height: myheight/30,width: mywidth/2,
                      child: Text('Aanchaldeep', style: textStyleW500.copyWith(fontSize: 22)),),
                    Row(children: [
                      Text('Create a channel',style: TextStyle(fontSize: 12),), Icon(Icons.keyboard_arrow_right, color: const Color.fromARGB(255, 117, 115, 115),size:10)
                    ],)
                  ],),
                )
              ],
            ),
          ),
          Container(
            height: myheight/18,
            width: mywidth,
            child: Column(
              children: [
                Container(
                  height: myheight/25,
                  width: mywidth,
                  child:ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 10,),
                      Profilebuttons(
                      iconData: Icons.person
                      ,text: 'Switch account'),
                      SizedBox(width: 10,),
                      Profilebuttons(
                      iconData: Icons.face
                      ,text: 'Google account'),
                      SizedBox(width: 10,),    
                      Profilebuttons(
                      iconData: Icons.person
                      ,text: '  Turn on Incognito'),
                      SizedBox(width: 8),],)
                ),
              ],
            ),
          ),
          Container(height: myheight/18,width: mywidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('History', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(height: 30,width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),border: Border.all(color: Colors.grey,width: 1)
              ),
              child: Center(child: Text('View all',style: textStyleW100.copyWith(fontSize: 11),)),),
            )
          ],),),
       
          Container(
          height: myheight/4.5,
          width: mywidth,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
               Row(
               children: [
                shortbox(videoTitle: "Food shorts", videoThumbnailUrl: 'assets/Food_image.jpg', channelName: 'Khana Khazana', viewsCount: '120'),
                YouTubeVideoWidget(videoTitle: "Food shorts", videoThumbnailUrl: 'assets/Food_image.jpg', channelName: 'Khana Khazana', viewsCount: '12'),
                YouTubeVideoWidget(videoTitle: "Role of AI ", videoThumbnailUrl: 'assets/image_2.jpg', channelName: 'Marcus Ng', viewsCount: '50'),
                YouTubeVideoWidget(videoTitle: "Duke Part-2", videoThumbnailUrl: 'assets/Duke2.jpg', channelName: 'FilmFare', viewsCount: '200'),
                YouTubeVideoWidget(videoTitle: 'Love Nature', videoThumbnailUrl: 'assets/Nature.jpeg', channelName: 'Nature Discoverys', viewsCount: '400'),
                
               ],
             )
            ],
          )
          ),
       
          Container(height: myheight/18,width: mywidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Playlists', style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(height: 30,width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),border: Border.all(color: Colors.grey,width: 1)
              ),
              child: Center(child: Text('View all',style: textStyleW100.copyWith(fontSize: 11),)),),
            )
          ],),),
       
          Container(height: myheight/5,width: mywidth,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
            return 
             Row(
               children: [
                YouTubeVideoWidget(videoTitle: "Duke Part-2", videoThumbnailUrl: 'assets/Duke1.jpg', channelName: 'FilmFare', viewsCount: '12'),
                YouTubeVideoWidget(videoTitle: 'Love Nature', videoThumbnailUrl: 'assets/Nature.jpeg', channelName: 'Nature Discoverys', viewsCount: '12'),
                YouTubeVideoWidget(videoTitle: "Role of AI ", videoThumbnailUrl: 'assets/image_2.jpg', channelName: 'Marcus Ng', viewsCount: '12'),
               ],
             )
             
             ;
          },),
          ),
      settingscontainer(text: 'Your videos', iconData:Icons.video_collection_outlined,),
      settingscontainer(text: 'Downloads', iconData: Icons.download_outlined,),
      Divider(height: 5,color: Colors.grey,),
      settingscontainer(text: 'Your movie', iconData: Icons.movie_outlined,),
      settingscontainer(text: 'Get YouTube Premium', iconData: Icons.video_collection),
      Divider(height: 5,color: Colors.grey,),
      settingscontainer(text: 'Time watched', iconData:Icons.bar_chart_outlined ,),
      settingscontainer(text: 'Help & feedback', iconData:Icons.question_mark_outlined ,),
      
        ],
       ),
     ))
     
    );
  }
}