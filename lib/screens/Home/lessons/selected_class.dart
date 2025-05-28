import 'package:flutter/material.dart';
import 'package:flutter_apptoan/theme/app_colors.dart';

// Temporary LessonListScreen for testing
class LessonListScreen extends StatelessWidget {
  const LessonListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson List'),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Welcome to Lesson List Screen'),
      ),
    );
  }
}

class SelectedClass extends StatefulWidget {
  const SelectedClass({super.key});

  @override
  State<SelectedClass> createState() => _SelectedClassState();
}

class _SelectedClassState extends State<SelectedClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          icon: const Icon(Icons.arrow_back, color: AppColors.PrimaryColor),
        ),
        title: const Text(
          'Lớp 6',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 16.0, // Space between columns
          mainAxisSpacing: 16.0, // Space between rows
          childAspectRatio: 1.0, // Aspect ratio of grid items
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _buildGridItem(
              context,
              imagePath: 'assets/images/algebra.png',
              label: 'Hình học',
            ),
            _buildGridItem(
              context,
              imagePath: 'assets/images/geometry.png',
              label: 'Đại số',
            ),
            _buildGridItem(
              context,
              imagePath: 'assets/images/geometry.png',
              label: 'Xác suất thống kê',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(
    BuildContext context, {
    required String imagePath,
    required String label,
  }) {
    return GestureDetector(
      onTap: () {
        // Navigate to LessonListScreen without passing parameters
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LessonListScreen(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.sanMarino200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}