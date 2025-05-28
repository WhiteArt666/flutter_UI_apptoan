import 'package:flutter/material.dart';
import 'package:flutter_apptoan/theme/app_colors.dart';
import 'package:flutter_apptoan/widgets/bottom_navigaton.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // _buildStatusBar(),
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
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 4,
        onItemTapped: (index) {
          // Chuyển trang tương ứng khi người dùng nhấn vào bottom nav
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/exercise');
          } else if (index == 2) {
            Navigator.pushReplacementNamed(context, '/ranking');
          } else if (index == 3) {
            Navigator.pushReplacementNamed(context, '/profile');
          }
        },
      ),
    );
  }

  // Widget _buildStatusBar() {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         const Text(
  //           '9:41',
  //           style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 17,
  //             fontFamily: 'Inter',
  //             fontWeight: FontWeight.w600,
  //             height: 1.29,
  //           ),
  //         ),
  //         Row(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Opacity(
  //               opacity: 0.35,
  //               child: Container(
  //                 width: 25,
  //                 height: 13,
  //                 decoration: BoxDecoration(
  //                   border: Border.all(color: Colors.black),
  //                   borderRadius: BorderRadius.circular(4.3),
  //                 ),
  //               ),
  //             ),
  //             const SizedBox(width: 7),
  //             Container(
  //               width: 21,
  //               height: 9,
  //               decoration: BoxDecoration(
  //                 color: Colors.black,
  //                 borderRadius: BorderRadius.circular(2.5),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _buildProfileCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.PrimaryColor.withOpacity(0.5),
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
                    image: NetworkImage("https://placehold.co/62x62"),
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
