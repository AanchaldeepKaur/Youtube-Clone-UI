import 'package:flutter/material.dart';



class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Notifications",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                
                  children: [
                    SizedBox(width:5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Imporant",style: TextStyle(color: Colors.grey),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/round_profil_picture_after_.webp'),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190, 
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("The Lifestyle Cog uploaded: Come With Me To Work | My 9-5 Routine",),
                              Container(
                                width: 300,
                                height: 20,
                                child: Text('10 hours ago',style: TextStyle(color: const Color.fromARGB(255, 124, 123, 123)),))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image:AssetImage('assets/Lifestyle.jpg'),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),
                 Row(
                
                  children: [
                    SizedBox(width:5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Today",style: TextStyle(color: Colors.grey),),
                    ),
                  ],
                ),
                 Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                             backgroundImage: AssetImage('assets/profileImage.png'),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Column(
                            children: [
                              Text("Buiscuit Cake using 3 ingridients without using oven"),
                               Container(
                                width: 300,
                                height: 20,
                                child: Text('15 hours ago',style: TextStyle(color: const Color.fromARGB(255, 124, 123, 123)),))
                            
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image:DecorationImage(image: AssetImage('assets/Food_image.jpg'),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                             backgroundImage: AssetImage('assets/profileimage2.jpg'),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Text("Official Trailer of Movie Duke Part-2 ",),
                                   Container(
                                width: 300,
                                height: 20,
                                child: Text('18 hours ago',style: TextStyle(color: const Color.fromARGB(255, 124, 123, 123)),))
                            
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image:AssetImage('assets/Duke2.jpg'),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),           
                  
                 Row(
                
                  children: [
                    SizedBox(width:5,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("This week",style: TextStyle(color: Colors.grey),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/profileImage.png'),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190, 
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Explore the Beautiful world of nature",),
                              Container(
                                width: 300,
                                height: 20,
                                child: Text('10 hours ago',style: TextStyle(color: const Color.fromARGB(255, 124, 123, 123)),))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image:AssetImage('assets/Nature.jpeg'),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),
                                 Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                             backgroundImage: AssetImage('assets/profileImage.png'),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Column(
                            children: [
                              Text("Buiscuit Cake using 3 ingridients without using oven"),
                               Container(
                                width: 300,
                                height: 20,
                                child: Text('15 hours ago',style: TextStyle(color: const Color.fromARGB(255, 124, 123, 123)),))
                            
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image:DecorationImage(image: AssetImage('assets/Food_image.jpg'),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                             backgroundImage: AssetImage('assets/profileimage2.jpg'),
                            ),
                          ),
                        ],
                      ),
                  
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190,
                          
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Text("New Official full Movie Duke Part-2 ",),
                                   Container(
                                width: 300,
                                height: 20,
                                child: Text('18 hours ago',style: TextStyle(color: const Color.fromARGB(255, 124, 123, 123)),))
                            
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),   
                           Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image:AssetImage('assets/Duke1.jpg'),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      ) ,    
              ]
            )),
               Row(
                
                  children: [
                    SizedBox(width:5,height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Older",style: TextStyle(color: Colors.grey),),
                    ),
                  ],
                ),
                  Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/round_profil_picture_after_.webp'),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 8),
                        child: Container(
                          height: 80,
                          width: 190, 
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("The Lifestyle Cog uploaded: Come With Me To Work | My 9-5 Routine",),
                              Container(
                                width: 300,
                                height: 20,
                                child: Text('10 hours ago',style: TextStyle(color: const Color.fromARGB(255, 124, 123, 123)),))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,left: 4),
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image:AssetImage('assets/Lifestyle.jpg'),fit: BoxFit.fill)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top :8.0,left:4),
                        child: Icon(Icons.more_vert,),
                      )
                    ],
                  ),
                ),
        ],
      ),
       ) ],
      )
    );
  }
}