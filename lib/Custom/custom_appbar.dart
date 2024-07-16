import 'package:flutter/material.dart';
import 'package:flutter_youtube/pages.dart/Account.dart/notification.dart';
import 'package:flutter_youtube/pages.dart/Account.dart/search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      floating: true,
            leadingWidth: 120.0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset('assets/YouTube_logo_(2017).png'),
            ),
            actions: [
              IconButton(
                onPressed: (){
                
              }, 
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
              Container(height: 40, width: 20,)
              ],
          );
  }
}