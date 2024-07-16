import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_youtube/Custom/custom.dart';
import 'package:flutter_youtube/Custom/custom_appbar.dart';
import 'package:flutter_youtube/Custom/homecustom.dart';
import 'package:flutter_youtube/Custom/youtube_shorts.dart';
import 'package:flutter_youtube/const/colors.dart';
import 'package:flutter_youtube/const/style.dart';
import 'package:flutter_youtube/pages.dart/homepage.dart/homepageshorts.dart';
import 'package:flutter_youtube/pages.dart/homepage.dart/newontapscrn.dart';
  
class Homescr1 extends StatefulWidget {
  const Homescr1({super.key});

  @override
  State<Homescr1> createState() => _Homescr1State();
}

class _Homescr1State extends State<Homescr1> {

  @override

  Widget build(BuildContext context) {
  var myheight= MediaQuery.of(context).size.height;
  var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
         CustomAppBar(),
         SliverList(delegate: SliverChildListDelegate(
          [
              Container(
                     height: myheight/12,
                    width: mywidth,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: buttonColor,),
                                child: IconButton(
                                onPressed: (){                   
                                }, 
                                icon: Icon(Icons.explore_outlined, size: 25,)),
                              ),
                            ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 50,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black,),
                                child: Center(child: Text('All',style: TextStyle(color: Colors.white),))
                              ),
                            ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: box(
                                myheight: 40,
                                mywidth:  60,
                                mylabel: 'Today',
                                mycolor: buttonColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: box(
                                myheight: 40,
                                mywidth:  70,
                                mylabel: 'Videos',
                                mycolor: buttonColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: box(
                                myheight: 40,
                                mywidth:  70,
                                mylabel: 'Shorts',
                                mycolor: buttonColor,
                               ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: box(
                                myheight: 40,
                                mywidth:  50,
                                mylabel: 'Live',
                                mycolor: buttonColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: box(
                                myheight: 40,
                                mywidth:  60,
                                mylabel: 'Posts',
                                mycolor: buttonColor,
                               ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: box(
                                myheight: 40,
                                mywidth:  140,
                                mylabel: 'Continue Watching',
                                mycolor: buttonColor,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: box(
                                myheight: 40,
                                mywidth:  90,
                                mylabel: 'Unwatched',
                                mycolor: buttonColor,
                                 ),
                              ),
                             Container(
                              height: 40,
                              width: 100 ,
                              child: Center(child: Text('Send Feedback',style: TextStyle(color: Colors.blue, fontSize: 12),)),
                             )
                        
                          ],
                        ),
                      ],
                    ),
                      ],
                    )
                     
                  ),
                       Padding(
           padding: const EdgeInsets.only(right: 280),
           child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage('assets/YouTube-shorts-logo.jpeg'))
            ),
           ),
         ),
         Container(
                        height: 600,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                             Column(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(10),
                                   child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder:(context) => HomeShorts() ,));
                                    },
                                     child: youtube_shorts(
                                      shorts_description: 'Lunch of Ordinary Office',
                                      shorts_preview: 'assets/Food_image.jpg'),
                                   ),
                                 ),
                                 GestureDetector(
                                   onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder:(context) => HomeShorts() ,));
                                    },
                                   child: Padding(
                                     padding: const EdgeInsets.all(10),
                                     child: youtube_shorts(
                                      shorts_description: "Best Books of 2024",
                                      shorts_preview: 'assets/Books_images.jpeg'),
                                   ),
                                 ),
                               ],
                             ),
                             Column(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(10),
                                   child: GestureDetector(
                                     onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder:(context) => HomeShorts() ,));
                                    },
                                     child: youtube_shorts(
                                      shorts_description: "Trailer of Duke-2",
                                      shorts_preview: 'assets/Duke2.jpg'),
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(10),
                                   child: GestureDetector(
                                     onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder:(context) => HomeShorts() ,));
                                    },
                                     child: youtube_shorts(
                                      shorts_description: "this is one as well",
                                      shorts_preview: "assets/YouTube-shorts-logo.jpeg"),
                                   ),
                                 ),
                               ],
                             ),
                          ],
                        ),
                         
                  ),
            Column(
              children: [
                Container(
                  height: 600,
                  width: mywidth,
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
                        borderRadius: BorderRadius.circular(30), 
                        image: DecorationImage(
                        image: AssetImage('assets/profileimage2.jpg'),
                        fit: BoxFit.cover),
                        ),),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Container(height: 20,width: 200,child: Text('Aadishorts 1M',style: TextStyle(fontSize: 16),),),
                        ),
                        Container(
                          height: 20,
                          width: 200,
                          child:  Text('5 days ago', style: TextStyle(fontSize: 12),)),
                      ],
                    ),
                  
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color:buttonColor),
                      child: Center(child: Text('Subscribe')),),
                    ),
                    IconButton(
                      onPressed:(){
                        showModalBottomSheet(
                          isScrollControlled: true,
                          showDragHandle: true,
                          context: context, builder:(context) {
                          return Wrap(
                            children:[Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 360,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.flag_outlined),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Report'),
                                        )
                                      ],
                                    ),
                                  
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 300,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.not_interested_outlined),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Not interested'),
                                        )
                                      ],
                                    ),
                                  
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 300,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.not_interested_outlined),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Don't recommend posts from channel"),
                                        )
                                      ],
                                    ),
                                  
                                  ),
                                )
                              ],),
                    ]
                          );
                        },);
                      }, 
                      icon: Icon(Icons.more_vert)
                      )
                    ],
                  ),
                ),
                 Container(
                            height:30,
                            width: 340,
                            child: Text('Celebrities Spotted', style: TextStyle(fontSize: 16),),

                           ),
                Container(
                   height: 400,
                  width: 400,
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Stack(
                          children: [ 
                            Container(
                            height: 400,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20), 
                              image: DecorationImage(image: AssetImage('assets/downloadPost3.jpeg'),fit: BoxFit.cover)),
                          ),
                           Positioned(
                            top: 10,
                            left: 295,
                              child: Container(
                              height: 25,
                              width: 45,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black,),
                              child: Center(child: Text('1/3',style: TextStyle(color: Colors.white),)),                         ),
                            ),
                          ]
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.all(10),
                        child: Stack(
                          children: [ 
                           
                            Container(
                            height: 400,
                            width: 350,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black), 
                            image: DecorationImage(image: AssetImage('assets/Post 2.jpg'),fit: BoxFit.cover)),
                          ),
                           Positioned(
                            top: 10,
                            left: 295,
                              child: Container(
                              height: 25,
                              width: 45,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black,),
                              child: Center(child: Text('2/3',style: TextStyle(color: Colors.white),)),                         ),
                            ),
                          ]
                        ),
                      ),
                         Padding(
                        padding: const EdgeInsets.all(10),
                        child: Stack(
                          children: [ 
                            Container(
                            height: 400,
                            width: 350,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('assets/Post3.jpg'),fit: BoxFit.cover)
                            ),
                          ),
                           Positioned(
                            top: 10,
                            left: 295,
                              child: Container(
                              height: 25,
                              width: 45,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black,),
                              child: Center(child: Text('3/3',style: TextStyle(color: Colors.white),)),                         ),
                            ),
                          ]
                        ),
                      ), 
                       
                    ],
                  ),
                ),
                 Container(
                        height: 40,
                        width: mywidth,
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon( Icons.thumb_up_alt_outlined),
                          ),
                            Text('2.5k'),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Icon(Icons.thumb_down_alt_outlined),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 200),
                              child: GestureDetector(
                                onTap: (){
                              showModalBottomSheet(
                              backgroundColor: Colors.white,
                              showDragHandle: true,
                              context: context, builder:(context) {
                              return Container(
                                height: 550,
                                width: 400,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 370,
                                      child:  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text('Post comments',style: textStyleW100.copyWith(fontSize: 20),),
                                      ),
                                      Text('128',style: TextStyle(color: Colors.grey, fontSize: 18),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 100),
                                        child: Icon(Icons.vertical_distribute_outlined),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Icon(Icons.close),
                                      )
                                    ],
                                  ),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 350,
                                    
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    height:35,
                                                    width: 35,
                                                    child: CircleAvatar(
                                                      backgroundImage: AssetImage('assets/profileImage.png'),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 65,
                                                    width: 35,
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                height: 100,
                                                width: 260,
                                                 child: Column(
                                                  children: [
                                                    Row(
                                                    children: [
                                                    Padding(
                                                      padding: const EdgeInsets.all(5.0),
                                                      child: Text('@avleen',style: TextStyle(color: const Color.fromARGB(255, 132, 130, 130)),),
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      width:10 ,
                                                      child: Center(child: Text('.',style: TextStyle(color: const Color.fromARGB(255, 132, 130, 130))))),
                                                    Text('3w ago',style: TextStyle(color: const Color.fromARGB(255, 132, 130, 130)))

                                                    ],),
                                                    Container(
                                                      height: 50,
                                                      width: 260,
                                                      
                                                      child: Text('So Beautiful, So Elegant , Just Looking like a Wow'),
                                                    ),
                                                      Container(
                                                          height: 20,
                                                          width: 260,
                                                          child: Row(children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(left: 10),
                                                              child: Icon( Icons.thumb_up_alt_outlined,size: 20,color: const Color.fromARGB(255, 132, 130, 130)),
                                                            ),
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 5),
                                                                child: Text('2.5k',style: TextStyle(color: const Color.fromARGB(255, 132, 130, 130)),),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 15),
                                                                child: Icon(Icons.thumb_down_alt_outlined,size: 20,color: const Color.fromARGB(255, 132, 130, 130)),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 50),
                                                                child: Icon(Icons.chat_outlined,size: 20,color: const Color.fromARGB(255, 132, 130, 130)),
                                                              )
                                                          ],),
                                                        ),
                                                  ],
                                                 ),
                                              ),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 60),
                                              child: Container(
                                                height: 35,
                                                width: 40,
                                                child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))),
                                            )
                                            
                                            ],
                                          ),

                                        ],)
                                    )
                                  ],
                                ),
                              );
                             },
                             );
                                },
                                child: Icon(Icons.chat_outlined)),
                            )
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:15 ),
                        child: Container(
                          height: 40,
                          width: 350,
                          child: Center(child: Text('View all posts')),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color:buttonColor,),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => OnTapScr(),));
              },
              child: home(
                context,
              preview_image: 'assets/Nature.jpeg',
              video_title: 'Explore the world og Nature',
              profile_picture: 'assets/profileImage.png',
              views: '1.7M views',
              time: '2 days ago',
              Account_name: 'Discovery'
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
             GestureDetector(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => OnTapScr(),));
              },
               child: home(
                           context,
                           preview_image: 'assets/image_2.jpg',
                           video_title: 'Role of AI',
                           profile_picture: 'assets/profileImage.png',
                           views: '5.7M views',
                           time: '7 days ago',
                           Account_name: 'Discovery'
                           ),
             )
          ],
         ),
         Padding(
           padding: const EdgeInsets.only(right: 280),
           child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              image:DecorationImage(image: AssetImage('assets/YouTube-shorts-logo.jpeg'))
            ),
           ),
         ),
         Container(
                        height: 600,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                             Column(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(10),
                                   child: youtube_shorts(
                                    shorts_description: 'Lunch of Ordinary Office',
                                    shorts_preview: 'assets/Food_image.jpg'),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(10),
                                   child: youtube_shorts(
                                    shorts_description: "Best Books of 2024",
                                    shorts_preview: 'assets/Books_images.jpeg'),
                                 ),
                               ],
                             ),
                             Column(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(10),
                                   child: youtube_shorts(
                                    shorts_description: "Trailer of Duke-2",
                                    shorts_preview: 'assets/Duke2.jpg'),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(10),
                                   child: youtube_shorts(
                                    shorts_description: "this is one as well",
                                    shorts_preview: "assets/YouTube-shorts-logo.jpeg"),
                                 ),
                               ],
                             ),
                          ],
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
             GestureDetector(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => OnTapScr(),));
              },
               child: home(
                           context,
                           preview_image: 'assets/image_2.jpg',
                           video_title: 'Role of AI',
                           profile_picture: 'assets/profileImage.png',
                           views: '5.7M views',
                           time: '7 days ago',
                           Account_name: 'Discovery'
                           ),
             )
          ]
         )
         
       )
        ],
      )
    );
  }
}

