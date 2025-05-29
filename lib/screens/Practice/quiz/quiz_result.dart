import 'package:flutter/material.dart';
import 'package:flutter_apptoan/theme/app_colors.dart';

class QuizResult extends StatelessWidget {
  const QuizResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5875B8),
      body: SafeArea(
        child: Column(
          children: [
            // Profile Section
            _buildProfileSection(),
            const SizedBox(height: 24),
            // Correct/Incorrect Answers Section
            _buildAnswerSection(context),
            const SizedBox(height: 24),
            // Main Result Card
            _buildResultCard(context),
            // Bottom Buttons
            _buildBottomButtons(context),
          ],
        ),
      ),
    );
  }



  Widget _buildProfileSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          // Avatar
          Container(
            width: 122,
            height: 122,
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/icons/Memoji09.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 12),
          // Name
          const Text(
            'Đinh Trọng Phúc',
            style: TextStyle(
              color: Color(0xFFF3F7FB),
              fontSize: 22,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnswerSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Correct Answers
          _buildAnswerCard(
            value: 32 / 50,
            count: '32 câu',
            color: const Color(0xFF34C759),
            icon: Icons.check,
            iconColors: const Color(0xFF34C759),
          ),
          const SizedBox(width: 16),
          // Incorrect Answers
          _buildAnswerCard(
            value: 18 / 50,
            count: '18 câu',
            color: const Color(0xFFFF3B30),
            icon: Icons.close,
            iconColors: const Color(0xFFFF3B30),
          ),
        ],
      ),
    );
  }

  Widget _buildAnswerCard({
    required double value,
    required String count,
    required Color color,
    required IconData icon,
    required Color iconColors,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFF3F7FB), width: 5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF3F7FB),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: CircularProgressIndicator(
                    value: value,
                    strokeWidth: 6,
                    backgroundColor: const Color(0xFFF3F7FB),
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                  ),
                ),
                Icon(icon, color: iconColors, size: 20),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              count,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Tab Bar
              _buildTabBar(),
              const SizedBox(height: 24),
              // Circular Progress Indicator for Score
              _buildScoreIndicator(),
              const SizedBox(height: 24),
              // Stats Section
              _buildStatsSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: const Color(0x1E787880),
        borderRadius: BorderRadius.circular(9),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildTabItem('Kết quả', isSelected: true),
            const SizedBox(width: 8),
            _buildTabItem('Bài làm'),
            const SizedBox(width: 8),
            _buildTabItem('Câu đúng'),
            const SizedBox(width: 8),
            _buildTabItem('Câu sai'),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(String label, {bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF5875B8) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontSize: 13,
          fontFamily: 'Inter',
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildScoreIndicator() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF3F7FB),
          ),
        ),
        SizedBox(
          width: 140,
          height: 140,
          child: CircularProgressIndicator(
            value: 0.9, // Score: 9/10
            strokeWidth: 10,
            backgroundColor: const Color(0xFFF3F7FB),
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF43538A)),
          ),
        ),
        const Text(
          '9',
          style: TextStyle(
            color: Color(0xFF43538A),
            fontSize: 60,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _buildStatsSection() {
    return Column(
      children: [
        _buildStatRow('Tổng câu', '50', const Color(0xFF5875B8)),
        const SizedBox(height: 16),
        _buildStatRow('Tổng câu đúng', '32', const Color(0xFF34C759)),
        const SizedBox(height: 16),
        _buildStatRow('Tổng câu sai', '18', const Color(0xFFFF3B30)),
      ],
    );
  }

  Widget _buildStatRow(String label, String value, Color valueColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFF3F7FB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: valueColor,
              fontSize: 17,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButtons(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.sanMarino200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Làm lại',
                  style: TextStyle(
                    color: AppColors.PrimaryColor,
                    fontSize: 17,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF5875B8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Xem lại',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}