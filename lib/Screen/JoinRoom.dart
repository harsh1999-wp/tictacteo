import 'package:flutter/material.dart';

import '../ResponsiveLayout/Responsive.dart';
import '../Widget/CustomButton.dart';
import '../Widget/CustomTextfield.dart';
import '../Widget/custom_text.dart';

class JoinRoom extends StatefulWidget {
  static String routename= '/JoinRoom';
  const JoinRoom({Key? key}) : super(key: key);

  @override
  State<JoinRoom> createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
  TextEditingController _gameIdController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _gameIdController.dispose();
    _nameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                shadows: [
                  Shadow(
                    blurRadius:  40,
                    color: Colors.blue,
                  )
                ],
                text: 'Join Room',
                fontSize: 70,
              ),
              SizedBox(height: size.height * 0.08,),
              CustomTextfield(controller: _nameController, HintText:"Enter Your Nickname" ),
              const SizedBox(height: 20,),
              CustomTextfield(controller: _gameIdController, HintText:"Enter Your Nickname" ),
              SizedBox(height: size.height*0.045,),
              CustomButton(onTap: (){}, text: 'Join ')
            ],
          ),
        ),
      ),
    );
  }
}
