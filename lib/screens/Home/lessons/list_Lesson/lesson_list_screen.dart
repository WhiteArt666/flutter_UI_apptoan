import 'package:flutter/material.dart';
import 'package:flutter_apptoan/screens/Home/lessons/list_Lesson/lesson_Detail/lesson_detail_screen.dart';

class Lesson_ListS_creen extends StatelessWidget {
  const Lesson_ListS_creen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children: const [ListLesson()]));
  }
}

class ListLesson extends StatelessWidget {
  const ListLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  const SizedBox(height: 10),
                  ChapterCard(
                    chapterTitle: 'Chương 1. Hàm số bậc hai với ẩn x',
                    progress: '12/...',
                    lessons: [
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Tự luận',
                        typeColor: Color(0xFFFFCC00),
                        score: '9',
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Trắc nghiệm',
                        typeColor: Color(0xFF007AFF),
                        score: '9',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ChapterCard(
                    chapterTitle: 'Chương 2. Hai hàm số đối xứng kề bù',
                    progress: '3/4',
                    lessons: [
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Tự luận',
                        typeColor: Color(0xFFFFCC00),
                        score: '9',
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Trắc nghiệm',
                        typeColor: Color(0xFF007AFF),
                        score: '9',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ChapterCard(
                    chapterTitle: 'Chương 3. Hai hàm số đối xứng kề bù',
                    progress: '1/2',
                    lessons: [
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Tự luận',
                        typeColor: Color(0xFFFFCC00),
                        score: '9',
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Trắc nghiệm',
                        typeColor: Color(0xFF007AFF),
                        score: '9',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ChapterCard(
                    chapterTitle: 'Chương 4. Hai hàm số đối xứng kề bù',
                    progress: '12/...',
                    lessons: [
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Tự luận',
                        typeColor: Color(0xFFFFCC00),
                        score: '9',
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Trắc nghiệm',
                        typeColor: Color(0xFF007AFF),
                        score: '9',
                      ),
                    ],
                  ),
                  ChapterCard(
                    chapterTitle: 'Chương 3. Hai hàm số đối xứng kề bù',
                    progress: '1/2',
                    lessons: [
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Tự luận',
                        typeColor: Color(0xFFFFCC00),
                        score: '9',
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Trắc nghiệm',
                        typeColor: Color(0xFF007AFF),
                        score: '9',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),ChapterCard(
                    chapterTitle: 'Chương 3. Hai hàm số đối xứng kề bù',
                    progress: '1/2',
                    lessons: [
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Tự luận',
                        typeColor: Color(0xFFFFCC00),
                        score: '9',
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Trắc nghiệm',
                        typeColor: Color(0xFF007AFF),
                        score: '9',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ChapterCard(
                    chapterTitle: 'Chương 3. Hai hàm số đối xứng kề bù',
                    progress: '1/2',
                    lessons: [
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Bài học',
                        typeColor: Color(0xFF34C759),
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Tự luận',
                        typeColor: Color(0xFFFFCC00),
                        score: '9',
                      ),
                      LessonItem(
                        title: 'Bài 1: Phương trình bậc hai',
                        type: 'Trắc nghiệm',
                        typeColor: Color(0xFF007AFF),
                        score: '9',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class StatusBar extends StatelessWidget {
//   const StatusBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(top: 21, left: 16, right: 16),
//       height: 98,
//       decoration: BoxDecoration(
//         border: Border(
//           bottom: BorderSide(width: 0.3, color: Colors.black.withOpacity(0.77)),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const Text(
//             '9:41',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 17,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           Row(
//             children: [
//               Opacity(
//                 opacity: 0.35,
//                 child: Container(
//                   width: 25,
//                   height: 13,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.black),
//                     borderRadius: BorderRadius.circular(4.3),
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 7),
//               Container(
//                 width: 21,
//                 height: 9,
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(2.5),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back, size: 24, color: Colors.black),
        ),
        const Expanded(
          child: Text(
            'Lớp 6',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              letterSpacing: -0.43,
            ),
          ),
        ),
        const SizedBox(width: 24),
      ],
    );
  }
}

class ChapterCard extends StatefulWidget {
  final String chapterTitle;
  final String progress;
  final List<LessonItem> lessons;

  const ChapterCard({
    super.key,
    required this.chapterTitle,
    required this.progress,
    this.lessons = const [],
  });

  @override
  State<ChapterCard> createState() => _ChapterCardState();
}

class _ChapterCardState extends State<ChapterCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF3F7FB),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF5875B8), width: 0.5),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFF5875B8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    widget.progress,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.08,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    widget.chapterTitle,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.31,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (widget.lessons.isNotEmpty) {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    }
                  },
                  child: Icon(
                    isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          if (isExpanded && widget.lessons.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                childAspectRatio: 2 / 1,
                children: widget.lessons,
              ),
            ),
        ],
      ),
    );
  }
}

class LessonItem extends StatelessWidget {
  final String title;
  final String type;
  final Color typeColor;
  final String? score;

  const LessonItem({
    super.key,
    required this.title,
    required this.type,
    required this.typeColor,
    this.score,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context)=> const LessonDetail()));
      },
      child: Container(
        width: (MediaQuery.of(context).size.width - 48) / 2,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                letterSpacing: -0.08,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                border: Border.all(color: typeColor),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                type,
                style: TextStyle(
                  color: typeColor,
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.06,
                ),
              ),
            ),
            if (score != null) ...[
              const SizedBox(height: 4),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Điểm: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.08,
                      ),
                    ),
                    TextSpan(
                      text: score,
                      style: const TextStyle(
                        color: Color(0xFF5875B8),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.08,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}