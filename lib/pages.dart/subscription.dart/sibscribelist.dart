import 'package:flutter/material.dart';
import 'package:flutter_youtube/Custom/Customall.dart';
//import 'package:flutter_youtube/const/colors.dart';
import 'package:flutter_youtube/const/style.dart';
import 'package:flutter_youtube/pages.dart/homepage.dart/home.dart';
import 'package:flutter_youtube/pages.dart/shorts.dart/shortstories.dart';
import 'package:flutter_youtube/pages.dart/subscription.dart/subscribe.dart';

class SubscribeList extends StatefulWidget {
  const SubscribeList({super.key});

  @override
  State<SubscribeList> createState() => _SubscribeListState();
}

class _SubscribeListState extends State<SubscribeList> {
 
  //  int initialindex = 0;
  //    void bottomNavbar (index){
  //     setState(() {
  //       initialindex= index;
  //     });
  //    }

     final List<Widget>screens = [
      HomePage(),
    Shorts(),
    Text('dfujvn'),
    Subscribe(),
    Text('dfujvn')
  ];
  
  @override
  Widget build(BuildContext context) {
  
   var mywidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
        title: Text('All subscriptions', style: textStyleW100.copyWith(fontSize: 21)),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.cast)),
          IconButton(onPressed: (){}, icon:Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
        Container(
          height: 40,
          width: 380,
          child: Column(
            children: [
              PopupMenuButton(
            color:Colors.white ,
            elevation: 20,
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text('Most relevant'),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              ),     
            ),
            itemBuilder:(context) => [
              PopupMenuItem(child: Text('Most relevant'),),
              PopupMenuItem(child: Text('New activity'),),
              PopupMenuItem(child: Text('New A-z'),),
            ],),
            ],
          ),
        ),
        Container(
          height: 625,
          width: mywidth,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              mybox(mylabel: 'Keerat Gill Sharma',profileImage:'assets/round_profil_picture_after_.webp'),
              mybox(mylabel: 'Chef Ranveer Brar',profileImage: 'assets/Food_image.jpg'),
              mybox(mylabel: 'Free Code Camp', profileImage:'assets/Books_images.jpeg' ),
              mybox(mylabel: 'Edureka',profileImage:'assets/profileimage2.jpg' ),
              mybox(mylabel: 'Learnex',profileImage: 'assets/profileImage.png'),
              mybox(mylabel: 'THe LifeStyle',profileImage: 'assets/round_profil_picture_after_.webp'),
              mybox(mylabel: 'FilmFare',profileImage: 'assets/Lifestyle.jpg'),
              mybox(mylabel: 'Code With Harry',profileImage:'assets/profileimage2.jpg'),
              mybox(mylabel: 'Thoughts of people',profileImage: 'assets/Lifestyle.jpg'),
              mybox(mylabel: 'Chef Ranveer Brar',profileImage:'assets/Food_image.jpg'),
              mybox(mylabel: 'Free Code Camp',profileImage:'assets/profileimage2.jpg'),
              mybox(mylabel: 'Edureka',profileImage: 'assets/round_profil_picture_after_.webp'),
              mybox(mylabel: 'Learnex',profileImage: 'assets/profileImage.png'),
              
            ],
          ),
        )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      // currentIndex: initialindex,
      // type: BottomNavigationBarType.fixed,
      // onTap: bottomNavbar,
      // items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', activeIcon:Icon(Icons.home,color: appColor,)),
      //   BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Shorts', activeIcon: Icon(Icons.explore,color: appColor)),
      //   BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline,size: 40), label: ' ', activeIcon: Icon(Icons.add_circle,color: appColor,size: 40,)),
      //   BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions', activeIcon: Icon(Icons.subscriptions,color:appColor)),
      //   BottomNavigationBarItem(icon: Icon(Icons.person),label: 'You', activeIcon: Icon(Icons.person,color: appColor,)),

      // ]),
    );
  }
}
