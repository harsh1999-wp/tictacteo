import 'package:flutter/material.dart';
import 'package:ticktoegame/ResponsiveLayout/Responsive.dart';
import 'package:ticktoegame/Screen/CreateRoom.dart';
import 'package:ticktoegame/Screen/JoinRoom.dart';
import 'package:ticktoegame/utils/Colors.dart';

import '../Widget/CustomButton.dart';

class MainScreen extends StatelessWidget {
  static String routename= '/MainScreen';
  const MainScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body:Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onTap: (){},text: 'Create Room ',),
            const SizedBox(height: 20,),
            CustomButton(onTap: (){}, text: 'Join Room'),
          ],
        ),
      ),
    );
  }
}
