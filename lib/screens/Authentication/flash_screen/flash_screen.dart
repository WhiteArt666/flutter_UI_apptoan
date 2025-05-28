import 'package:flutter/material.dart';
import 'package:flutter_apptoan/theme/app_colors.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      body: Center(
        child: Image.asset('assets/images/logo200x.png'),
      ),
    );
  }
}