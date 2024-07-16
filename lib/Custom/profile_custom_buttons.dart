import 'package:flutter/material.dart';

class Profilebuttons extends StatelessWidget {
  final String text;
  final IconData? iconData;
  const Profilebuttons({super.key, required this.text, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 30,width: 160,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
              color:Colors.grey.shade200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                if(iconData!=null)
                  Icon(iconData),
                    if(iconData!=null)
                  SizedBox(width: 6,),
                  Text(text)  
              ],),
            );
  }
}
