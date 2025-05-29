import 'package:flutter/material.dart';
import 'package:flutter_apptoan/theme/app_colors.dart';

import '../../widgets/custom_header.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xFFF2F2F7),
    body: Stack(
      children: [
        // Thêm CustomHeader làm nền
        CustomHeader(),
        // Nội dung chính của Scaffold
        Scaffold(
          backgroundColor: Colors.transparent, // Đặt nền trong suốt để thấy CustomHeader
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildProfileCard(),
                        const SizedBox(height: 40),
                        _buildSection(
                          title: 'Quản lý tài khoản',
                          items: [
                            _buildListItem(
                              'Thông tin tài khoản',
                              Icons.person_outline,
                            ),
                            _buildListItem('Đổi mật khẩu', Icons.lock_outline),
                          ],
                        ),
                        const SizedBox(height: 20),
                        _buildSection(
                          title: 'Hoạt động học tập',
                          items: [_buildListItem('Lịch sử làm bài', Icons.history)],
                        ),
                        const SizedBox(height: 20),
                        _buildSection(
                          title: 'Hỗ trợ và thông tin',
                          items: [
                            _buildListItem('Chính sách', Icons.policy),
                            _buildListItem('Về chúng tôi', Icons.info_outline),
                            _buildListItem('Liên hệ', Icons.contact_support),
                            _buildListItem(
                              'Câu hỏi thường gặp',
                              Icons.question_answer,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        _buildLogoutButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
           bottomNavigationBar: _buildBottomNavigationBar(),
          
        ),
      ],
    ),
  );
}

  Widget _buildProfileCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.sanMarino300.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 32,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 62,
                height: 62,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 185, 190, 202),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/icons/Memoji09.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Đinh Trọng Phúc',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 1.25,
                    letterSpacing: -0.45,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '039948645',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
                    letterSpacing: -0.23,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({required String title, required List<Widget> items}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 1.29,
            letterSpacing: -0.43,
          ),
        ),
        const SizedBox(height: 16),
        Column(children: items),
      ],
    );
  }

  Widget _buildListItem(String title, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.black),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.33,
                letterSpacing: -0.23,
              ),
            ),
          ),
          const Icon(Icons.chevron_right, size: 20, color: Colors.black),
        ],
      ),
    );
  }

  Widget _buildLogoutButton() {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Đăng xuất',
          style: TextStyle(
            color: Color(0xFFFF3B30),
            fontSize: 17,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 1.29,
            letterSpacing: -0.43,
          ),
        ),
      ),
    );
  }
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
