import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apptoan/theme/app_colors.dart';

// Custom clipper for the top wave
class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.7 );

    var firstControlPoint = Offset(size.width * 0.25, size.height);
    var firstEndPoint = Offset(size.width * 0.5, size.height * 0.7);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    var secondControlPoint = Offset(size.width * 0.75, size.height * 0.4);
    var secondEndPoint = Offset(size.width, size.height * 0.7);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// Custom clipper for the bottom wave
class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height * 0.3);

    var firstControlPoint = Offset(size.width * 0.2, 0);
    var firstEndPoint = Offset(size.width * 0.5, size.height * 0.3);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    var secondControlPoint = Offset(size.width * 0.75, size.height * 0.6);
    var secondEndPoint = Offset(size.width, size.height * 0.3);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MathRegisterScreen extends StatelessWidget {
  const MathRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //top wave backgroud
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: TopWaveClipper(),
              child: Container(height: 150, color: AppColors.PrimaryColor),
            ),
          ),

          // Bottom wave background
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: BottomWaveClipper(),
              child: Container(
                height: 100, // Reduced height to match the image
                color: AppColors.PrimaryColor,
              ),
            ),
          ),
          // Main content
          Column(
            children: [
              Expanded(child: Container()),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 90),

                    // App logo
                    _buildAppLogo(),

                    SizedBox(height: 24),

                    // Login form
                    _buildLoginForm(context),

                    // Bottom indicator
                    SizedBox(
                      height: 50,
                    ), // Reduced spacing to bring the indicator closer to the wave
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAppLogo() {
    return Container(
      height: 160,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(50),
      ),
      // Placeholder for logo image
      child: Center(
        child: Image.asset('assets/images/logo300x.png', fit: BoxFit.contain),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Đăng nhập tài khoản',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 32),

          //name input
          _buildNameRegisterInput(),
          SizedBox(height: 16),

          // Email/Phone input
          _buildPhoneRegisterInput(),
            SizedBox(height: 16),

          _buildEmailRegisterInput(),

          SizedBox(height: 16),

          // Password input
          _buildPasswordInput(context),

          SizedBox(height: 16),

          _buildConfirmPasswordInput(context),

          SizedBox(height: 8),

          // Forgot password link
          _buildForgotPasswordLink(),

          SizedBox(height: 24),

          // Login button
          _buildLoginButton(),

          SizedBox(height: 40),

          // Register link
          _buildRegisterLink(context),
        ],
      ),
    );
  }

  Widget _buildPhoneRegisterInput() {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: TextField(
        style: TextStyle(fontSize: 17),
        decoration: InputDecoration(
          hintText: 'Nhập số điện thoại',
          hintStyle: TextStyle(fontSize: 17, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildEmailRegisterInput() {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: TextField(
        style: TextStyle(fontSize: 17),
        decoration: InputDecoration(
          hintText: 'Nhập email',
          hintStyle: TextStyle(fontSize: 17, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildNameRegisterInput() {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: TextField(
        style: TextStyle(fontSize: 17),
        decoration: InputDecoration(
          hintText: 'Họ Và Tên',
          hintStyle: TextStyle(fontSize: 17, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildPasswordInput(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextField(
            obscureText: true,
            style: TextStyle(fontSize: 17),
            decoration: InputDecoration(
              hintText: 'Mật khẩu',
              hintStyle: TextStyle(fontSize: 17, color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              border: InputBorder.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                // Toggle password visibility
              },
              child: Icon(Icons.visibility, size: 24),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConfirmPasswordInput(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey),
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextField(
            obscureText: true,
            style: TextStyle(fontSize: 17),
            decoration: InputDecoration(
              hintText: 'Nhập lại mật khẩu',
              hintStyle: TextStyle(fontSize: 17, color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              border: InputBorder.none,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                // Toggle password visibility
              },
              child: Icon(Icons.visibility, size: 24),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForgotPasswordLink() {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          // Handle forgot password
        },
        child: Text('Quên mật khẩu?', style: TextStyle(fontSize: 17)),
      ),
    );
  }

  Widget _buildLoginButton() {
    return GestureDetector(
      onTap: () {
        // Handle login
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.PrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: Text(
          'Đăng nhập',
          style: TextStyle(fontSize: 17, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildRegisterLink(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Chưa có tài khoản? ',
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
            TextSpan(
              text: 'Đăng ký',
              style: TextStyle(fontSize: 17, color: AppColors.PrimaryColor),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      // Handle register
                    },
            ),
          ],
        ),
      ),
    );
  }
}
