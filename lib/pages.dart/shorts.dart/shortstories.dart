import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_youtube/pages.dart/Account.dart/search.dart';
import 'package:video_player/video_player.dart';
import 'package:image_picker/image_picker.dart';

class Shorts extends StatefulWidget {
  const Shorts({super.key});

  @override
  State<Shorts> createState() => _ShortsState();
}

class _ShortsState extends State<Shorts> {
  File ? selectedimage ;

  late VideoPlayerController _controller;

   @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
     var myheight= MediaQuery.of(context).size.height;
     var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          height: myheight,
          width: mywidth,
          child:
           PageView.builder(
            scrollDirection: Axis.vertical,
              itemBuilder: (context, index)
             {
              return   Stack(
              children: [
                
                Container(
                height: myheight,
                width: mywidth,
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
           
                    : Container(),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
                  },
                  child: Container(
                    height: 80,width: 80,
                    child: Icon( _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,),
                  ),
                ),
              ),
             
              Container(
                height: myheight,
                width: mywidth,
                color: Colors.black,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       Padding(
                         padding: const EdgeInsets.only(bottom: 110),
                         child: Container(
                              height: 60,
                              width: mywidth,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(11),
                                    child: Text('Shorts',style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 290,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(onPressed:(){
                                            Navigator.push(context, MaterialPageRoute(builder:(context) => Search(),));
                                          }, icon: Icon(Icons.search, color: Colors.white,),)
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IconButton(onPressed:()
                                          {
                                           _cameraimage();
                                          }, 
                                          icon: Icon(Icons.camera_alt_outlined, color: Colors.white,),)
                                        ),
                                        IconButton(onPressed: (){
                showModalBottomSheet(
                                        showDragHandle: true,
                                        context: context, 
                                        builder: (context){
                                            return  Wrap(
                                              children: [ 
                                                Column(
                                                  children: [
                                                   Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.description_outlined,size: 30,),
                                                              SizedBox(width: 20),
                                                              Text("Description",style: TextStyle(fontSize: 16),),
                                                            ],
                                                          ),
                                                         
                                                        ],
                                                      ),
                                                    ),
                                                    
                                                    Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.add_box_outlined
                                                              ,size: 25,),
                                                              SizedBox(width: 20),
                                                              Text("Save to playlist",style: TextStyle(fontSize: 16),),
                                                            ],
                                                          ),
                                                         
                                                        ],
                                                      ),
                                                    ),
                                                   
                                                    Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.closed_caption_outlined,size: 25,),
                                                              SizedBox(width: 20),
                                                              Text("Captions",style: TextStyle(fontSize: 16),),
                                                            ],
                                                          ),
                                                         
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.not_interested,size: 30,),
                                                              SizedBox(width: 20),
                                                              Text("Not interested",style: TextStyle(fontSize: 16),),
                                                            ],
                                                          ),
                                                         
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.not_started_outlined,size: 30,),
                                                              SizedBox(width: 20),
                                                              Text("Don't recommend this channel",style: TextStyle(fontSize: 16),),
                                                            ],
                                                          ),
                                                         
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.flag_outlined,size: 30,),
                                                              SizedBox(width: 20),
                                                              Text("Report",style: TextStyle(fontSize: 16),),
                                                            ],
                                                          ),
                                                         
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.chat_outlined,size: 30,),
                                                              SizedBox(width: 20),
                                                              Text("Send Feedback",style: TextStyle(fontSize: 16),),
                                                            ],
                                                          ),
                                                         
                                                        ],
                                                      ),
                                                    ),
                                              
                                                  ],
                                                ),
                                              ]
                                            );
                                            
                                        }
                                        );            
          }, icon: Icon(Icons.more_vert,size: 25,color: Colors.white,))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                       ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: myheight/1.5,
                            width: mywidth/1.3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(radius: 20, backgroundImage:AssetImage('assets/round_profil_picture_after_.webp') ,),
                                    ),
                                    Text('@avleen', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 30,
                                        width: 70,
                                        child: Center(child: Text('Subscribe', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 10))),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(40),
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                    
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Container(
                                        height: 30,
                                        width: mywidth/1.7,
                                        child: Text('Chill kr.....#shorts', style: TextStyle(color: Colors.white),)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 30,
                                        width: mywidth/2,
                                      
                                        child: Row(
                                          children: [
                                            Icon(Icons.music_note, color:Colors.white),
                                            Text('name of the audio', style: TextStyle(color: Colors.white),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            
                          
                          ),
                      
                          Container(
                          
                            height: myheight/1.5,
                            width: 70,
                            //color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(Icons.thumb_up,color: Colors.white, size:30),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 13),
                                  child: Text('12k', style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(Icons.thumb_down,color: Colors.white,size:30),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 13),
                                  child: Text('Dislike', style: TextStyle(color: Colors.white,fontSize: 11),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Icon(Icons.comment,color: Colors.white,size:30),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 13),
                                  child: Text('12k',  style: TextStyle(color: Colors.white,fontSize: 11)),
                                ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration:BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/youtubeshreicon.webp'),fit: BoxFit.cover)
                                ),
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom :8.0),
                                  child: Text('Share',  style: TextStyle(color: Colors.white, fontSize: 11)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.import_export,color: Colors.white, size:30),
                                ),
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage('assets/round_profil_picture_after_.webp'),fit: BoxFit.cover)
                                  ),
                                 ),
                               )
                              ],
                            ),
                          )
                      
                        ],
                      ),
                    ],
                  ),
             
              )
              ]
                       );
             }
            
           ),
        ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
   Future _cameraimage()async{
  final returnedImage   = await ImagePicker().pickImage(source:ImageSource.camera);
  if(returnedImage== null) return;
  setState(() {
    selectedimage = File(returnedImage.path);
  });
  }
}