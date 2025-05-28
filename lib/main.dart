import 'package:flutter/material.dart';
import 'package:flutter_apptoan/screens/Authentication/flash_screen/flash_screen.dart';
import 'package:flutter_apptoan/screens/Authentication/welcome_screen/welcome_page1.dart';
import 'package:flutter_apptoan/screens/Home/lessons/list_Lesson/lesson_Detail/lesson_detail_screen.dart';
import 'package:flutter_apptoan/screens/Home/lessons/list_Lesson/lesson_list_screen.dart';
import 'package:flutter_apptoan/screens/Home/lessons/selected_class.dart';
import 'package:flutter_apptoan/screens/Practice/quiz/quiz_lastest.dart';
import 'package:flutter_apptoan/screens/Practice/quiz/quiz_notime_screen.dart';
import 'package:flutter_apptoan/screens/Practice/quiz/quiz_result.dart';
import 'package:flutter_apptoan/screens/Practice/quiz/quiz_screen.dart';
import 'package:flutter_apptoan/screens/Profile/profile_screen.dart';
import 'package:flutter_apptoan/screens/Rank/Rank_profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Profile(),
        ),
      ),
    );
  }
}
