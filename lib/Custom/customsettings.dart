import 'package:flutter/material.dart';

class Settingbox extends StatelessWidget {
  final String text;
  const Settingbox({super.key, required this.text, });

  @override
  Widget build(BuildContext context) {
     var mywidth= MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20,),
      child: Container(
        height:43,
        width: mywidth,
        child: Text(text,style: TextStyle(fontSize: 17),)),
    );
  }
}