import 'package:flutter/material.dart';

class HomePractice extends StatelessWidget {
  const HomePractice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [Expanded(child: PracticeContent()), BottomNavBar()],
        ),
      ),
    );
  }
}

class PracticeContent extends StatelessWidget {
  const PracticeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Luyện tập',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              letterSpacing: 0.38,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Hãy chọn lớp hiện tại của bạn để làm bài tập phù hợp nhất với bạn',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.43,
            ),
          ),
          const SizedBox(height: 16),
          ...List.generate(4, (index) => GradeCard(grade: 6 + index)),
        ],
      ),
    );
  }
}

class GradeCard extends StatelessWidget {
  final int grade;
  final List<Color> colors = const [
    Color(0xFFBB5E7C), // Dusty Rose
    Color(0xFFD77B59), // Burnt Apricot
    Color(0xFFE6A23C), // Golden Honey
    Color(0xFFD6453F), // Warm Tomato
  ];

  GradeCard({super.key, required this.grade});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: colors[grade - 6],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: Text(
              '$grade',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 60,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Điểm gần đây nhất:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.08,
                ),
              ),
              Text(
                '8 điểm',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.23,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.black.withOpacity(0.3), width: 0.3),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavItem(
            icon: Icons.home_outlined,
            label: 'Trang chủ',
            isSelected: false,
          ),
          NavItem(
            icon: Icons.book_outlined,
            label: 'Luyện tập',
            isSelected: true,
          ),
          NavItem(
            icon: Icons.leaderboard_outlined,
            label: 'Xếp hạng',
            isSelected: false,
          ),
          NavItem(
            icon: Icons.person_outlined,
            label: 'Tài khoản',
            isSelected: false,
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 24,
          color: isSelected ? const Color(0xFF5875B8) : const Color(0xFF999999),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color:
                isSelected ? const Color(0xFF5875B8) : const Color(0xFF999999),
            fontSize: 10,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
