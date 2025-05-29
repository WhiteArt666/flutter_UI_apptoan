import 'package:flutter/material.dart';

class QuizLastest extends StatelessWidget {
  const QuizLastest({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FB), // Backgrounds-Brand-Primary-Tint
      body: SafeArea(
        child: Column(
          children: [
            // Timer and Progress Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Timer Container (Shortened and Centered)
                  Center(
                    child: Container(
                      width: screenWidth * 0.5, // Shortened to 50% of screen width
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 16), // Adjusted padding for smaller size
                      decoration: ShapeDecoration(
                        color: Colors.white, // Backgrounds-Primary
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 5,
                            color: Color(0xFF5875B8), // Miscellaneous-Generals-Brand-Border
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.timer, size: 24),
                          const SizedBox(width: 10),
                          Text(
                            '15:00',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black, // Texts-Primary
                              fontSize: 22,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 1.27,
                              letterSpacing: -0.26,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Progress Bar (Full Width)
                  LinearProgressIndicator(
                    value: 0.75, // Adjust based on progress (e.g., 269/361)
                    backgroundColor: const Color(0xFF5875B8), // Backgrounds-Brand-Primary
                    valueColor: const AlwaysStoppedAnimation<Color>(
                        Color(0xFF43538A)), // Backgrounds-Brand-Primary-Strong
                    minHeight: 12,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ],
              ),
            ),
            // Question Counter
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.arrow_back_ios, size: 24),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(Icons.question_answer, size: 24),
                      const SizedBox(width: 8),
                      Text(
                        'Câu 1/50',
                        style: TextStyle(
                          color: Colors.black, // Texts-Primary
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 1.29,
                          letterSpacing: -0.43,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios, size: 24),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Question and Answer Options
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white, // Backgrounds-Primary
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trong các phép tính của số hữu tỉ, thứ tự thực hiện phép tính đối với biểu thức không có dấu ngoặc là:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black, // Texts-Primary
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                          letterSpacing: -0.43,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        '1 điểm',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0x993C3C43), // Texts-Secondary
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                          letterSpacing: -0.43,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Expanded(
                        child: ListView.separated(
                          itemCount: 4,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                          itemBuilder: (context, index) {
                            return AnswerOption(
                              text: 'Cộng và trừ → Nhân và chia → Lũy thừa;',
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Bottom Buttons
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white, // Backgrounds-Primary
                border: Border(
                  top: BorderSide(
                    width: 0.60,
                    color: Colors.black.withOpacity(0.3), // Miscellaneous-Generals-Border
                  ),
                ),
              ),
              child: Row(
                children: [
                  // Expanded(
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     style: ElevatedButton.styleFrom(
                  //       // backgroundverno.50, // Buttons-Secondary-Fill
                  //       padding: const EdgeInsets.symmetric(
                  //           horizontal: 20, vertical: 14),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(12),
                  //       ),
                  //     ),
                  //     child: Text(
                  //       'Nộp bài',
                  //       style: TextStyle(
                  //         color: const Color(0xFF5875B8), // Buttons-Secondary-label
                  //         fontSize: 17,
                  //         fontFamily: 'Inter',
                  //         fontWeight: FontWeight.w400,
                  //         height: 1.29,
                  //         letterSpacing: -0.43,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF5875B8), // Buttons-Primary-Fill
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Nộp bài',
                        style: TextStyle(
                          color: Colors.white, // Buttons-Primary-Label
                          fontSize: 17,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                          letterSpacing: -0.43,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Answer Option Widget
class AnswerOption extends StatelessWidget {
  final String text;

  const AnswerOption({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F7FB), // Backgrounds-Brand-Primary-Tint
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.fromBorderSide(
                BorderSide(color: Colors.black, width: 1),
              ),
            ),
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black, // Texts-Primary
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.31,
                letterSpacing: -0.31,
              ),
            ),
          ),
        ],
      ),
    );
  }
}