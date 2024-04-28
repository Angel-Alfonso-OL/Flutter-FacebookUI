
import 'package:facebook_ui/facebook_ui/widgets/circle_button.dart';
import 'package:facebook_ui/facebook_ui/widgets/quick_action.dart';
import 'package:facebook_ui/facebook_ui/widgets/stories.dart';
import 'package:facebook_ui/facebook_ui/widgets/what_is_on_your_mind.dart';
import 'package:facebook_ui/icons/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class FacebookUI extends StatelessWidget {
  const FacebookUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: SvgPicture.asset(
          "assets/logos/facebook.svg",
          width: 150,
          colorFilter: const ColorFilter.mode(
            Colors.blue,
            BlendMode.srcIn,
          ),
        ),
        actions: const [
          CircleButton(
            color: Colors.grey,
            icon: CustomIcons.search,
          ),
          SizedBox(width: 15),
          CircleButton(
            color: Colors.red,
            icon: CustomIcons.bell,
          ),
          SizedBox(width: 15),
          CircleButton(
            valor: true,
            color: Colors.blue,
            icon: CustomIcons.user_friends,
          ),
          SizedBox(width: 15),
          CircleButton(
            color: Color.fromARGB(255, 19, 72, 162),
            icon: CustomIcons.messenger,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(height: 10,),
          WhatIsOnYourMind(),
          SizedBox(height: 30,),
          QuickActions(),
          SizedBox(height: 30,),
          Stories(),
        ],
      ),
    );
  }
}

