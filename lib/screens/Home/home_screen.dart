import 'package:flutter/material.dart';
import 'package:flutter_apptoan/models/grade_card.dart';
import 'package:flutter_apptoan/screens/Home/lessons/selected_class.dart';
import 'package:flutter_apptoan/theme/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _nameTopwelcom(),

              _bannertop(),

              _dotIndicator(),

              _textclass(),

              _bannerClass(context),

              _textnew(),

              _posternewrow2(),

              SizedBox(height: 16),

              _posternew(),

              _textmore(),

              SizedBox(height: 20),
            ],
          ),
        ),
        
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromRGBO(0, 0, 0, 0.5),
              width: 1.0,
            )
          )
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Trang chủ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Luyện tập',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Xếp hạng',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Tài khoản',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

Widget _textmore() {
  return Container(
    margin: EdgeInsets.only(top: 2),
    child: Text(
      'Xem thêm',
      style: TextStyle(fontSize: 15, color: AppColors.PrimaryColor),
    ),
  );
}

Widget _textnew() {
  return Container(
    margin: EdgeInsets.only(top: 16),
    child: Align(
      alignment: AlignmentDirectional(-1, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 0, 12),
        child: Text(
          'Bài viết mới',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

Widget _textclass() {
  return Container(
    margin: EdgeInsets.only(left: 16, bottom: 12),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Khối lớp',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget _nameTopwelcom() {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: EdgeInsets.only(left: 16),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Xin Chào, \n',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              TextSpan(
                text: 'Xuân Như',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
        child: Icon(
          Icons.notifications_none,
          color: AppColors.PrimaryColor,
          size: 32,
        ),
      ),
    ],
  );
}

Widget _bannerClass(BuildContext context) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SelectedClass()),
                    );
                },
                child: GradeCard(
                  gradeNumber: "6",
                  progressText: "Bải học: 6/20",
                  backgroundColor: Color(0xFF9B59B6), // Purple
                  imagePath: 'assets/images/banner1.png',
                ),
              ),
              SizedBox(width: 16),
              GradeCard(
                gradeNumber: "7",
                progressText: "Bải học: 6/20",
                backgroundColor: Color(0xFFE67E22), // Orange
                imagePath: 'assets/images/banner1.png',
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradeCard(
                gradeNumber: "8",
                progressText: "Bải học: 6/20",
                backgroundColor: Color(0xFFF1C40F), // Yellow
                imagePath: 'assets/images/banner1.png',
              ),
              SizedBox(width: 16),
              GradeCard(
                gradeNumber: "9",
                progressText: "Bải học: 6/20",
                backgroundColor: Color(0xFFE74C3C), // Red
                imagePath: 'assets/images/banner1.png',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _bannertop() {
  return Padding(
    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
    child: Container(
      alignment: AlignmentDirectional.centerStart,
      margin: EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/banner1.png',
                  width: 267,
                  height: 172,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/banner2.png',
                width: 267,
                height: 172,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _dotIndicator() {
  return Container(
    margin: EdgeInsets.only(top: 11, bottom: 11),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 10,
          width: 10,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: AppColors.PrimaryColor,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          height: 10,
          width: 10,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.PrimaryColor, width: 1),
          ),
        ),
        Container(
          height: 10,
          width: 10,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.PrimaryColor, width: 1),
          ),
        ),
      ],
    ),
  );
}

Widget _posternew() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/imagenew.png',
                    width: 172,
                    height: 172,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                child: Text(
                  'Khuyến mãi cực khủng dành cho\nkhách hàng thiết kế app tại Mevi',
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),

              Align(
                alignment: const AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Opacity(
                        opacity: 0.4,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: Icon(
                            Icons.timer_rounded,
                            color: Colors.grey,
                            size: 10,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.4,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                          child: Text(
                            '01/01/2004',
                            style: TextStyle(fontSize: 8, color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Align(
                alignment: const AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: 0.4,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: Icon(
                            Icons.person_sharp,
                            color: Colors.grey,
                            size: 10,
                          ),
                        ),
                      ),

                      Opacity(
                        opacity: 0.4,
                        child: Text(
                          'Mevivu',
                          style: TextStyle(fontSize: 8, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/imagenew.png',
                width: 172,
                height: 172,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
              child: Text(
                'Khuyến mãi cực khủng dành cho\nkhách hàng thiết kế app tại Mevi',
                style: TextStyle(fontSize: 11, color: Colors.black),
              ),
            ),

            Align(
              alignment: const AlignmentDirectional(-1, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: Icon(
                          Icons.timer_rounded,
                          color: Colors.grey,
                          size: 10,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                        child: Text(
                          '01/01/2004',
                          style: TextStyle(fontSize: 8, color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: const AlignmentDirectional(-1, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: Icon(
                          Icons.person_sharp,
                          color: Colors.grey,
                          size: 10,
                        ),
                      ),
                    ),

                    Opacity(
                      opacity: 0.4,
                      child: Text(
                        'Mevivu',
                        style: TextStyle(fontSize: 8, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _posternewrow2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.max,
    children: [
      Align(
        alignment: const AlignmentDirectional(-1, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/imagenew.png',
                  width: 172,
                  height: 172,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
              child: Text(
                'Khuyến mãi cực khủng dành cho\nkhách hàng thiết kế app tại Mevi',
                style: TextStyle(fontSize: 11, color: Colors.black),
              ),
            ),

            Align(
              alignment: const AlignmentDirectional(-1, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: Icon(
                          Icons.timer_rounded,
                          color: Colors.grey,
                          size: 10,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                        child: Text(
                          '01/01/2004',
                          style: TextStyle(fontSize: 8, color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: const AlignmentDirectional(-1, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                        child: Icon(
                          Icons.person_sharp,
                          color: Colors.grey,
                          size: 10,
                        ),
                      ),
                    ),

                    Opacity(
                      opacity: 0.4,
                      child: Text(
                        'Mevivu',
                        style: TextStyle(fontSize: 8, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/imagenew.png',
              width: 172,
              height: 172,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
            child: Text(
              'Khuyến mãi cực khủng dành cho\nkhách hàng thiết kế app tại Mevi',
              style: TextStyle(fontSize: 11, color: Colors.black),
            ),
          ),

          Align(
            alignment: const AlignmentDirectional(-1, 0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Icon(
                        Icons.timer_rounded,
                        color: Colors.grey,
                        size: 10,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                      child: Text(
                        '01/01/2004',
                        style: TextStyle(fontSize: 8, color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: const AlignmentDirectional(-1, 0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                      child: Icon(
                        Icons.person_sharp,
                        color: Colors.grey,
                        size: 10,
                      ),
                    ),
                  ),

                  Opacity(
                    opacity: 0.4,
                    child: Text(
                      'Mevivu',
                      style: TextStyle(fontSize: 8, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
