import 'package:flutter/material.dart';
import 'package:flutter_youtube/Custom/customsettings.dart';
import 'package:flutter_youtube/const/style.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text('Settings', style: textStyleW700.copyWith(fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Settingbox(text: 'General'),
             Settingbox(text: 'Account'),
             Settingbox(text: 'Data Saving'),
             Settingbox(text: 'Autoplay'),
             Settingbox(text: 'Video quality preferences'),
            Settingbox(text: 'Downloads'),
             Settingbox(text: 'Watcg on TV'),
             Settingbox(text: 'Manage all history'),
             Settingbox(text: 'Your data in YouTube'),
             Settingbox(text: 'Privacy'),
              Settingbox(text: 'Try experimental new features'),
              Settingbox(text: 'Purchases and memberships'),
              Settingbox(text: 'Billing & Payments'),
              Settingbox(text: 'Notifications'),
             Settingbox(text: 'Connected Apps'),
             Settingbox(text: 'Captions'),
             Settingbox(text: 'Accessibility'),
             Settingbox(text: 'About'),
            
          ],
        ),
      ),
    );
  }
}