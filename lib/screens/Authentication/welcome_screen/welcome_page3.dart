import 'package:flutter/material.dart';
import 'package:flutter_apptoan/screens/Authentication/login_register_screen/math_login_screen.dart';
import 'package:flutter_apptoan/theme/app_colors.dart';

class WelcomePage3 extends StatefulWidget {
  WelcomePage3({Key? key}) : super(key: key);

  @override
  State<WelcomePage3> createState() => WelcomePage1State();
}

class WelcomePage1State extends State<WelcomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      body: Column(
        children: [
          //images
          Expanded(
            child: SafeArea(
              bottom: false,
              child: Container(
                margin: const EdgeInsets.all(50),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/math3.png',
                        width: 300,
                        height: 300,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //text
          Container(
            width: double.infinity,
            height: 400,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text(
                  'Cạnh tranh lành mạnh, \nvương lên bảng xếp hạng',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  'So tài cùng bạn bè,\nkhẳng định bản thân qua từng con số',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),

                SizedBox(height: 82),

                //Dots indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: AppColors.PrimaryColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.PrimaryColor,
                          width: 1,
                        ),
                      ),
                    ),
                    Container(
                      height: 10,
                      width: 10,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.PrimaryColor,
                          width: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Start button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen())
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.PrimaryColor,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Bắt đầu',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                //sign up text
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Bạn đã có tài khoản?',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                      TextSpan(
                        text: ' Đăng nhập',
                        style: TextStyle(fontSize: 17, color: AppColors.PrimaryColor),
                      ),
                    ],

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
