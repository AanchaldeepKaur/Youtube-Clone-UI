import 'package:flutter/material.dart';

Container youtube_shorts ({
required String shorts_preview,
required String shorts_description
}){
  return Container(
    height: 250,
    width: 175,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 250,
                                    width: 175,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black,
                                      image: DecorationImage(image: AssetImage(shorts_preview))
                                    ),
                                    
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:12.0,top:200),
                                    child: SizedBox(
                                      width: 140,
                                      child: Text(shorts_description,style: TextStyle(color: Colors.white),)),
                                  )
                                ],
                              ),
                            );
}