import 'package:flutter/material.dart';


class YouTubeVideoWidget extends StatelessWidget {
  final String videoTitle;
  final String videoThumbnailUrl;
  final String channelName;
  final String viewsCount;

  const YouTubeVideoWidget({
    Key? key,
    required this.videoTitle,
    required this.videoThumbnailUrl,
    required this.channelName,
    required this.viewsCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                          fontSize: 12,
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
}