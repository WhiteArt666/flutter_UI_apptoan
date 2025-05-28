import 'package:flutter/material.dart';

class GradeCard extends StatelessWidget {
  final String gradeNumber; // e.g., "6", "7", "8", "9"
  final String progressText; // e.g., "Bải học: 6/20"
  final Color backgroundColor; // Background color of the card
  final String imagePath; // Path to the books image

  const GradeCard({
    Key? key,
    required this.gradeNumber,
    required this.progressText,
    required this.backgroundColor,
    required this.imagePath,
  }) : super(key: key);

  @override
Widget build(BuildContext context) {
  return Container(
    width: 172,
    height: 114,
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row chứa ảnh và số
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: 80,
              height: 50,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 30), // Khoảng cách giữa ảnh và số
            Text(
              gradeNumber,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 10), // Khoảng cách giữa dòng trên và progress text

        // Progress text
        Text(
          progressText,
          style: TextStyle(fontSize: 12, color: Colors.white),
        ),
      ],
    ),
  );
}
}