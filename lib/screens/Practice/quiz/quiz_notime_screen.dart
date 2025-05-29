import 'package:flutter/material.dart';
import 'package:flutter_apptoan/theme/app_text_styles.dart';

class QuizNoTime extends StatelessWidget {
  const QuizNoTime({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: const Color(0xFFF3F7FB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Bar
              // _buildTopBar(context, textPrimaryStyle),
              // Main Content
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildQuizHeader(AppTextStyles.textPrimaryStyle),
                    const SizedBox(height: 24),
                    _buildQuestionCard(context, AppTextStyles.questionTextStyle, AppTextStyles.secondaryTextStyle, AppTextStyles.answerTextStyle),
                  ],
                ),
              ),
              SizedBox(height: 210),
              // Bottom Buttons
              _buildBottomButtons(context),
              // Home Indicator
              // _buildHomeIndicator(),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildQuizHeader(TextStyle textPrimaryStyle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 24, height: 24), // Placeholder for icon
        const SizedBox(width: 40),
        Row(
          children: [

            Icon(Icons.widgets),

            const SizedBox(width: 6, height: 24), // Placeholder for icon
            const SizedBox(width: 8),
            Text('Câu 1/50', style: textPrimaryStyle),
          ],
          
        ),
        const SizedBox(width: 40),
        const SizedBox(width: 24, height: 24), // Placeholder for icon
      ],
    );
  }

  Widget _buildQuestionCard(
    BuildContext context,
    TextStyle questionTextStyle,
    TextStyle secondaryTextStyle,
    TextStyle answerTextStyle,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Question
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Trong các phép tính của số hữu tỉ, thứ tự thực hiện phép tính đối với biểu thức không có dấu ngoặc là:',
                  style: questionTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: Text(
                  '1 điểm',
                  style: secondaryTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          // Answer Options
          Column(
            children: [
              _buildAnswerOption(
                'Lũy thừa → Nhân và chia → Cộng và trừ',
                answerTextStyle,
              ),
              const SizedBox(height: 16),
              _buildAnswerOption(
                'Nhân và chia → Lũy thừa → Cộng và trừ',
                answerTextStyle,
              ),
              const SizedBox(height: 16),
              _buildAnswerOption(
                'Cộng và trừ → Nhân và chia → Lũy thừa',
                answerTextStyle,
              ),
              const SizedBox(height: 16),
              _buildAnswerOption(
                'Nhân và chia → Cộng và trừ → Lũy thừa',
                answerTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAnswerOption(String text, TextStyle answerTextStyle) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFF3F7FB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const SizedBox(width: 24, height: 24), // Placeholder for radio button
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              text,
              style: answerTextStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButtons(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 0.6, color: Color.fromRGBO(0, 0, 0, 0.3)),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: _buildButton(
              text: 'Nộp bài',
              bgColor: const Color(0x265875B8),
              textColor: const Color(0xFF5875B8),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: _buildButton(
              text: 'Câu tiếp theo',
              bgColor: const Color(0xFF5875B8),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({
    required String text,
    required Color bgColor,
    required Color textColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 17,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: 1.29,
          letterSpacing: -0.43,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}