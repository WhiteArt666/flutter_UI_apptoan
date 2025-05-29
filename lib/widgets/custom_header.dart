// Widget tạo vòm xanh
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HeaderClipper(),
      child: Container(
        height: 200, // Chiều cao của vòm
        width: double.infinity,
        color: const Color(0xFF5875B8), // Màu xanh lam
      ),
    );
  }
}

// Clipper để tạo hình dạng vòm cong
class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50); // Điểm bắt đầu ở góc trái dưới
    path.quadraticBezierTo(
      size.width / 2, size.height, // Điểm điều khiển ở giữa
      size.width, size.height - 50, // Điểm kết thúc ở góc phải dưới
    );
    path.lineTo(size.width, 0); // Đóng path về góc phải trên
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}