import 'package:flutter/material.dart';
import 'package:flutter_apptoan/theme/app_colors.dart';

class HomeNotification extends StatelessWidget {
  const HomeNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            // Notification List
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildNotificationSection(context, 'Hôm nay', [
                        _buildNotificationItem(
                          context,
                          'Đăng ký tài khoản thành công',
                          'Đăng ký tài khoản thành công, hãy trải nghiệm một cách tốt nhất, Đăng ký tài khoản thành công, hãy trải nghiệm một cách tốt nhất',
                          '12 phút trước',
                          isToday: true, key: const Key('notification_11'),
                        ),
                        _buildNotificationItem(
                          context,
                          'Đăng ký tài khoản thành công',
                          'Đăng ký tài khoản thành công, hãy trải nghiệm một cách tốt nhất, Đăng ký tài khoản thành công, hãy trải nghiệm một cách tốt nhất',
                          '12 tiếng trước',
                          isToday: true, key: const Key('notification_2'),
                        ),
                      ]),
                      _buildNotificationSection(context, 'Hôm qua', [
                        _buildNotificationItem(
                          context,
                          'Đăng ký tài khoản thành công',
                          'Đăng ký tài khoản thành công, hãy trải nghiệm một cách tốt nhất, Đăng ký tài khoản thành công, hãy trải nghiệm một cách tốt nhất',
                          '1 ngày trước', key: const Key('notification_3'),
                        ),
                        _buildNotificationItem(
                          context,
                          'Đăng ký tài khoản thành công',
                          'Đăng ký tài khoản thành công, hãy trải nghiệm một cách tốt nhất, Đăng ký tài khoản thành công, hãy trải nghiệm một cách tốt nhất',
                          '1 ngày trước', key: const Key('notification_4'),
                        ),
                        _buildNotificationItem(
                          context,
                          'Đăng ký tài khoản thành công',
                          'Đăng ký tài khoản thành công, hãy trải nghiệm một cách tốt nhất, Đăng ký tài khoản thành công, hãy trải nghiệm một cách tốt nhất',
                          '1 ngày trước', key: const Key('notification_5'),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.3, color: Colors.black.withOpacity(0.3)),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 21, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: AppColors.PrimaryColor,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Thông báo',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(
                    Icons.notifications,
                    size: 24,
                    color: AppColors.PrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationSection(
    BuildContext context,
    String title,
    List<Widget> items,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
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
        const SizedBox(height: 12),
        Column(children: items),
      ],
    );
  }

  Widget _buildNotificationItem(
    BuildContext context,
    String title,
    String description,
    String time, {
    bool isToday = false,
    required Key key, // Added to ensure uniqueness for Dismissible
  }) {
    return Dismissible(
      key: key,
      direction: DismissDirection.endToStart, // Swipe from right to left
      background: Container(
        color: const Color.fromARGB(11, 238, 24, 13), // Light red background
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: const Icon(Icons.delete, color: Colors.red, size: 24),
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.3,
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: isToday ? const Color(0xFFF3F7FB) : Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                            color:
                                isToday
                                    ? const Color(0xFF5875B8)
                                    : Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 0.3,
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                              Icons.notifications_none_outlined,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 1.29,
                              letterSpacing: -0.43,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            description,
                            style: TextStyle(
                              color: const Color(0x993C3C43),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.31,
                              letterSpacing: -0.31,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            time,
                            style: TextStyle(
                              color: const Color(0x4C3C3C43),
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
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
              ),
            ),
          ],
        ),
      ),
      confirmDismiss: (direction) async {
        // Optional: Add confirmation logic for deletion
        return true; // Return true to dismiss, false to cancel
      },
    );
  }
}
