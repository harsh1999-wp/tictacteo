
import 'package:flutter/material.dart';
import 'package:ticktoegame/ResponsiveLayout/Responsive.dart';
import 'package:ticktoegame/Widget/CustomButton.dart';
import 'package:ticktoegame/Widget/CustomTextfield.dart';
import 'package:ticktoegame/Widget/custom_text.dart';

class CreateRoom extends StatefulWidget {
  static String routename = '/CreateRoom';
  const CreateRoom({Key? key}) : super(key: key);

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
                text: 'Create Room',
                fontSize: 70,
              ),
              SizedBox(height: size.height * 0.08,),
              CustomTextfield(controller: _nameController, HintText:"Enter Your Nickname" ),
              SizedBox(height: size.height*0.045,),
              CustomButton(onTap: (){}, text: 'Create Room ')
            ],
          ),
        ),
      ),
    );
  }
}
