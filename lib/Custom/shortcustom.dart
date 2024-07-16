import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Container shortbox ({
  String videoTitle = ' ',
  String videoThumbnailUrl=' ',
  String channelName=' ',
  String viewsCount=' ',
})
{
  return Container(
     height: 160,width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Column(
              children: [
                Container(
                   height: 90,width: 150,
                    decoration: BoxDecoration(
                    image:DecorationImage(
                    image:AssetImage(
                    videoThumbnailUrl,
                    ) ,
                    fit: BoxFit.cover) ,
                    borderRadius: BorderRadius.circular(12),
                   ),
                    child: Stack(
                      children: [
                        Container(
                          height: 90,
                          width: 48,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10),bottomStart: Radius.circular(10))
                          ),                
      ),
                      Positioned(
                        left: 102,
                        child: Container(
                            height: 90,
                            width: 48,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 60,
                                  left: 12,
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(7)
                                    ),
                                    child:SvgPicture.asset('assets/youtube-shorts-logo-15253.svg')
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.7),
                              borderRadius: BorderRadiusDirectional.only(topEnd: Radius.circular(10),bottomEnd: Radius.circular(10))
                            ),  
                        ),
                      )   
                      ],
                    ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:14),
                      child: Text(
                        videoTitle,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 35),
                       child: Icon(
                        Icons.more_vert,),
                     )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(left:5),
                      child: Text(
                        channelName,
                        style: TextStyle(     
                          fontSize: 14,
                        ),
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 8),
                
              ],
            ),
          ),
        ],
      ),

  );
}