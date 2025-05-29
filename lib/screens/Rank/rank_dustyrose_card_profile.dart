import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/custom_header.dart';

class RankDustyroseCardProfile extends StatelessWidget {
  const RankDustyroseCardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F7),
      body: Stack(
        children: [
          // Thêm CustomHeader làm nền
          CustomHeader(),
          // Nội dung chính của Scaffold
          Scaffold(
            backgroundColor: Colors.transparent, // Đặt nền trong suốt để thấy CustomHeader
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Container(
                child: const Text(
                  'Bảng xếp hạng',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.43,
                  ),
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTopRankSection(screenWidth),
                      const SizedBox(height: 24),
                      _buildRankList(),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: _buildBottomNavigationBar(),
          ),
        ],
      ),
    );
  }

  Widget _buildTopRankSection(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildRankCard(2, 'Đinh Trọng Phúc', 10, Colors.white, screenWidth / 3 - 16),
        _buildRankCard(1, 'Đinh Trọng Phúc', 10, const Color(0xFFBB5E7C), screenWidth / 3 - 16, isTop: true),
        _buildRankCard(3, 'Đinh Trọng Phúc', 10, Colors.white, screenWidth / 3 - 16),
      ],
    );
  }

  Widget _buildRankCard(int rank, String name, int points, Color bgColor, double width, {bool isTop = false}) {
  return Container(
    width: width,
    padding: EdgeInsets.only(top: isTop ? 8 : 32, bottom: 8),
    child: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Hạng $rank',
            style: TextStyle(
              color: bgColor == Colors.white ? Colors.black : Colors.white,
              fontSize: 16,
              fontFamily: 'Inter', // Changed to 'Inter' for consistency
              fontWeight: FontWeight.w400,
              height: 1.5,
              letterSpacing: 0.15,
            ),
          ),
          const SizedBox(height: 12),
          Stack(
            clipBehavior: Clip.none, // Allow crown to overflow
            alignment: Alignment.center,
            children: [
              Container(
                width: 62,
                height: 62,
                decoration: const BoxDecoration(
                  color: Color(0xFF5875B8),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/icons/Memoji09.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (isTop)
                  Positioned(
                    top: -20,
                    child: SvgPicture.asset(
                      'assets/icons/crown.svg',
                      width: 32, // specify dimensions
                      height: 32,
                    ),
                  ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: bgColor == Colors.white ? Colors.black : Colors.white,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.33,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '$points điểm',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: bgColor == Colors.white ? const Color(0xFF5875B8) : const Color(0xFFF3F7FB),
              fontSize: 15,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 1.33,
              letterSpacing: -0.23,
            ),
          ),
        ],
      ),
    ),
  );
}

  Widget _buildRankList() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              SizedBox(
                width: 46,
                child: Text(
                  'Hạng',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 1.29,
                    letterSpacing: -0.43,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Thông tin người dùng',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 1.29,
                    letterSpacing: -0.43,
                  ),
                ),
              ),
              SizedBox(width: 12),
              SizedBox(
                width: 66,
                child: Text(
                  'Điểm',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 1.29,
                    letterSpacing: -0.43,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...List.generate(7, (index) {
            final rank = index + 3;
            final isHighlighted = rank == 0;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                decoration: BoxDecoration(
                  color: isHighlighted ? const Color(0xFFBB5E7C) : null,
                  border: !isHighlighted
                      ? Border(bottom: BorderSide(color: Colors.black.withOpacity(0.3)))
                      : null,
                  borderRadius: BorderRadius.circular(isHighlighted ? 12 : 0),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 46,
                      child: Text(
                        '$rank',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: isHighlighted ? Colors.white : Colors.black,
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                          letterSpacing: -0.23,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Đinh Trọng Phúc',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: isHighlighted ? Colors.white : Colors.black,
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                          letterSpacing: -0.23,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    SizedBox(
                      width: 66,
                      child: Text(
                        '10',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: isHighlighted ? Colors.white : Colors.black,
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                          letterSpacing: -0.23,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF5875B8),
      unselectedItemColor: const Color(0xFF999999),
      selectedLabelStyle: const TextStyle(
        fontSize: 10,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
      ),
      currentIndex: 2,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
        BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Luyện tập'),
        BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: 'Xếp hạng'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Tài khoản'),
      ],
      onTap: (index) {
        // Handle navigation
      },
    );
  }
}

