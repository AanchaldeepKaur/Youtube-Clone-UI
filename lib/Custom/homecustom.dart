
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_youtube/const/style.dart';

Container home (
  BuildContext context,
  {
String preview_image = ' ',
String video_title =' ',
String profile_picture=' ',
String views = ' ',
String time = ' ',
String Account_name = ' ',

})
{
  return Container(
    child: Column(
      children: [
        Stack(
          children: [
           Stack(
              children: [ 
                Container(
                height: 210,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(preview_image),
                  fit: BoxFit.cover)      
                ),
                              ),
              Positioned(
                top: 170,
                left: 340,
                child: Container(
                  height: 25,
                  width: 45,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text('12:40', style: TextStyle(color: Colors.white),),
                  ),
                  decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(6),
                  color: const Color.fromARGB(255, 42, 41, 41),),
                ),
              )
              ]
            )
          ],     
        ),
        Row(
          children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: CircleAvatar(
              foregroundImage: AssetImage(profile_picture),
              radius: 25,
            ),
          ),
          SizedBox(
            height: 70,
            width: 280,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(video_title,style:textStyleW100,),
                    ),
                    
                  ],
                ),
               
                 Row(
                    children: [
                    Text(Account_name, style:TextStyle(color: const Color.fromARGB(255, 117, 116, 116),fontSize: 12)),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(height: 2,width:2, color: const Color.fromARGB(255, 125, 123, 123),),
                    ),
                    Text(views, style:TextStyle(color: const Color.fromARGB(255, 117, 116, 116),fontSize: 12)),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(height:2, width:2,color: Colors.grey,),
                    ),
                    Text(time , style:TextStyle(color: const Color.fromARGB(255, 117, 116, 116),fontSize: 12)),
                    ],
                  ),
                
              ],
            ),
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
                                                              Icon(Icons.playlist_play_rounded,size: 30,),
                                                              SizedBox(width: 20),
                                                              Text("Play next in queue",style: TextStyle(fontSize: 16),),
                                                            ],
                                                          ),
                                                          Container(
                                                            height: 30,
                                                            width: 30,
                                                            child: Image.asset('assets/images_bottomsheet.png'),
                                                          )
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
                                                              Icon(Icons.access_time,size: 30,),
                                                              SizedBox(width: 20),
                                                              Text("Save to Watch later",style: TextStyle(fontSize: 16),),
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
                                                              Icon(Icons.bookmark_outline,size: 30,),
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
                                                              Icon(Icons.file_download_outlined,size: 30,),
                                                              SizedBox(width: 20),
                                                              Text("Download video",style: TextStyle(fontSize: 16),),
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
                                                              Icon(Icons.share_outlined,size: 30,),
                                                              SizedBox(width: 20),
                                                              Text("Share",style: TextStyle(fontSize: 16),),
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
                                                              Icon(Icons.person_off_outlined,size: 30,),
                                                              SizedBox(width: 20),
                                                              Text("Don't recommend channel",style: TextStyle(fontSize: 16),),
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
                                                              Icon(Icons.access_time,size: 30,),
                                                              SizedBox(width: 20),
                                                              Text("Save to Watch later",style: TextStyle(fontSize: 16),),
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
          }, icon: Icon(Icons.more_vert,size: 25,))
          ],
        )
      ],
    ),
  );
}