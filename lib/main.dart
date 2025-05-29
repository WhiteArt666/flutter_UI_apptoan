import 'package:flutter/material.dart';
import 'package:flutter_apptoan/screens/Authentication/flash_screen/flash_screen.dart';
import 'package:flutter_apptoan/screens/Authentication/welcome_screen/welcome_page1.dart';
import 'package:flutter_apptoan/screens/Home/home_screen.dart';
import 'package:flutter_apptoan/screens/Home/lessons/list_Lesson/lesson_Detail/lesson_detail_screen.dart';
import 'package:flutter_apptoan/screens/Home/lessons/list_Lesson/lesson_list_screen.dart';
import 'package:flutter_apptoan/screens/Home/lessons/selected_class.dart';
import 'package:flutter_apptoan/screens/Practice/home_practice.dart';
import 'package:flutter_apptoan/screens/Practice/quiz/quiz_lastest.dart';
import 'package:flutter_apptoan/screens/Practice/quiz/quiz_notime_screen.dart';
import 'package:flutter_apptoan/screens/Practice/quiz/quiz_result.dart';
import 'package:flutter_apptoan/screens/Practice/quiz/quiz_screen.dart';
import 'package:flutter_apptoan/screens/Profile/profile_screen.dart';
import 'package:flutter_apptoan/screens/Rank/Rank_profile.dart';
import 'package:flutter_apptoan/screens/Rank/Rank_profile_topdown.dart';
import 'package:flutter_apptoan/screens/Rank/rank_dustyrose_2cardcolor.dart';
import 'package:flutter_apptoan/screens/Rank/rank_dustyrose_card_profile.dart';
import 'package:flutter_apptoan/screens/notification/notifi_screen.dart';

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
          child: WelcomePage1(),
        ),
      ),
    );
  }
}
