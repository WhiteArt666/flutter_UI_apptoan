import 'package:flutter/material.dart';
import 'package:flutter_apptoan/theme/app_text_styles.dart';

class LessonDetail extends StatelessWidget {
  const LessonDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            const _StatusBar(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildImage(),
                  const SizedBox(height: 16),
                   Text(
                    'Bài 12. Giải hệ phương trình bằng phương pháp cộng đại số',
                    style: AppTextStyles.titleStyle,
                  ),
                  const SizedBox(height: 16),
                   Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'I. QUY TẮC CỘNG ĐẠI SỐ\n',
                          style: AppTextStyles.sectionTitleStyle,
                        ),
                        TextSpan(
                          text:
                              'Gồm hai bước:\n    + Bước 1: Cộng hay trừ từng vế hai phương trình của hệ phương trình đã cho để được một phương trình mới.\n    + Bước 2: Dùng phương trình mới ấy thay thế cho một trong hai phương trình của hệ (và giữ nguyên phương trình kia).\n\n',
                          style: AppTextStyles.bodyStyle,
                        ),
                        TextSpan(
                          text:
                              'II. TÓM TẮT CÁCH GIẢI HỆ PHƯƠNG TRÌNH BẰNG PHƯƠNG PHÁP CỘNG ĐẠI SỐ\n',
                          style: AppTextStyles.sectionTitleStyle,
                        ),
                        TextSpan(
                          text:
                              '    + Bước 1: Nhân các vế của hai phương trình với số thích hợp (nếu cần) sao cho các hệ số của một ẩn nào đó trong hai phương trình của hệ bằng nhau hoặc đối nhau.\n    + Bước 2: Sử dụng quy tắc cộng đại số để được hệ phương trình mới, trong đó có một phương trình mà hệ số của một trong hai ẩn bằng 0 (tức là phương trình một ẩn).\n    + Bước 3: Giải phương trình một ẩn vừa thu được rồi suy ra nghiệm của hệ đã cho.\n\n',
                          style: AppTextStyles.bodyStyle,
                        ),
                        TextSpan(
                          text: 'III. CHÚ Ý\n',
                          style: AppTextStyles.sectionTitleStyle,
                        ),
                        TextSpan(
                          text:
                              'Chú ý:\n    + Trong phương pháp cộng đại số, trước khi thực hiện bước 1, có thể nhân hai vế của mỗi phương trình với một số thích hợp (nếu cần) sao cho các hệ số của một ẩn nào đó trong hai phương trình của hệ là bằng nhau hoặc đối nhau.\n    + Đôi khi ta có thể dùng phương pháp đặt ẩn phụ để đưa hệ phương trình đã cho về hệ phương trình với hai ẩn mới, rồi sau đó sử dụng một trong hai phương pháp giải ở trên.',
                          style: AppTextStyles.bodyStyle,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildNextButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Stack(
    alignment: Alignment.center, // Logo nằm chính giữa ảnh
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          'assets/images/screen_lesson.png',
          height: 187,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      Container(
        width: 72,
        height: 72,
        decoration: BoxDecoration(
          color: Colors.white, // Nền mờ giúp logo nổi bật, không che ảnh
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.play_arrow,
          color: Colors.black,
          size: 40,
        ),
      ),
    ],
  );
  }

  Widget _buildNextButton() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFF5875B8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bài tiếp theo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.29,
              letterSpacing: -0.43,
            ),
          ),
          SizedBox(width: 4),
          Icon(Icons.arrow_forward, size: 20, color: Colors.white),
        ],
      ),
    );
  }
}

class _StatusBar extends StatelessWidget {
  const _StatusBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 21, 16, 0),
      height: 98,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.3,
            color: Colors.black.withOpacity(0.77),
          ),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.arrow_back, size: 24, color: Colors.black),
              ),
              const Expanded(
                child: Text(
                  'Bài 12',
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
              const SizedBox(width: 24),
            ],
          ),
        ],
      ),
    );
  }
}

