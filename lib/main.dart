import 'package:flutter/material.dart';
import 'package:ticktoegame/Screen/CreateRoom.dart';
import 'package:ticktoegame/Screen/JoinRoom.dart';
import 'package:ticktoegame/Screen/MainScreen.dart';
import 'package:ticktoegame/utils/Colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      routes: {
        MainScreen.routename:(context) => const MainScreen(),
        JoinRoom.routename:(context) => const JoinRoom(),
        CreateRoom.routename:(context) => const CreateRoom(),
      },
      initialRoute: JoinRoom.routename,
    );
  }
}
