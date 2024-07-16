import 'package:flutter/material.dart';
import 'package:flutter_youtube/const/style.dart';

Container box ({
  Color ? mycolor,
  double ? myheight,
  double ? mywidth,
  String mylabel = '',
})
{
  return Container( 
    height: myheight,
    width: mywidth,
    child: Center(child: Text(mylabel, style: textStyleW100,)),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: mycolor,
    ),
  );
}