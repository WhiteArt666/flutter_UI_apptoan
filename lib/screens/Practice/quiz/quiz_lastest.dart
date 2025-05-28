import 'package:flutter/material.dart';

class Rank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 1014,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: const Color(0xFFF2F2F7) /* Backgrounds-Secondary */,
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 98,
                child: Container(
                  width: 393,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 24,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 16,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(top: 32),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: ShapeDecoration(
                                          color: Colors.white /* Backgrounds-Primary */,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          spacing: 12,
                                          children: [
                                            Text(
                                              'Hạng 2',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black /* Texts-Primary */,
                                                fontSize: 16,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                                height: 1.50,
                                                letterSpacing: 0.15,
                                              ),
                                            ),
                                            Container(
                                              width: 62,
                                              height: 62,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFF5875B8) /* Backgrounds-Brand-Primary */,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(999),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      height: double.infinity,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child: Container(
                                                              width: 62,
                                                              height: 62,
                                                              decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                  image: NetworkImage("https://placehold.co/62x62"),
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 8,
                                                children: [
                                                  SizedBox(
                                                    width: 93.67,
                                                    child: Text(
                                                      'Đinh Trọng Phúc',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black /* Texts-Primary */,
                                                        fontSize: 12,
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.33,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 93.67,
                                                    child: Text(
                                                      '10 điểm',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: const Color(0xFF5875B8) /* Texts-Brand-Primary */,
                                                        fontSize: 15,
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.33,
                                                        letterSpacing: -0.23,
                                                      ),
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
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF43538A) /* Backgrounds-Brand-Primary---Strong */,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 12,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 20,
                                      children: [
                                        Text(
                                          'Hạng 1',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white /* Grayscale-White */,
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            height: 1.50,
                                            letterSpacing: 0.15,
                                          ),
                                        ),
                                        Stack(
                                          children: [
                                            Container(
                                              width: 62,
                                              height: 62,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFF5875B8) /* Backgrounds-Brand-Primary */,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(999),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      height: double.infinity,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child: Container(
                                                              width: 62,
                                                              height: 62,
                                                              decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                  image: NetworkImage("https://placehold.co/62x62"),
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              left: 12,
                                              top: -26,
                                              child: Container(
                                                width: 37,
                                                height: 37,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Stack(),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        spacing: 8,
                                        children: [
                                          SizedBox(
                                            width: 93.67,
                                            child: Text(
                                              'Đinh Trọng Phúc',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white /* Grayscale-White */,
                                                fontSize: 12,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 1.33,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 93.67,
                                            child: Text(
                                              '10 điểm',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: const Color(0xFFF3F7FB) /* Texts-Brand-Primary---Tint */,
                                                fontSize: 15,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                height: 1.33,
                                                letterSpacing: -0.23,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(top: 32),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: ShapeDecoration(
                                          color: Colors.white /* Backgrounds-Primary */,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          spacing: 12,
                                          children: [
                                            Text(
                                              'Hạng 3',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black /* Texts-Primary */,
                                                fontSize: 16,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                                height: 1.50,
                                                letterSpacing: 0.15,
                                              ),
                                            ),
                                            Container(
                                              width: 62,
                                              height: 62,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: const Color(0xFF5875B8) /* Backgrounds-Brand-Primary */,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(999),
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      height: double.infinity,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child: Container(
                                                              width: 62,
                                                              height: 62,
                                                              decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                  image: NetworkImage("https://placehold.co/62x62"),
                                                                  fit: BoxFit.cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 8,
                                                children: [
                                                  SizedBox(
                                                    width: 93.67,
                                                    child: Text(
                                                      'Đinh Trọng Phúc',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black /* Texts-Primary */,
                                                        fontSize: 12,
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.33,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 93.67,
                                                    child: Text(
                                                      '10 điểm',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: const Color(0xFF5875B8) /* Texts-Brand-Primary */,
                                                        fontSize: 15,
                                                        fontFamily: 'Inter',
                                                        fontWeight: FontWeight.w600,
                                                        height: 1.33,
                                                        letterSpacing: -0.23,
                                                      ),
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
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: ShapeDecoration(
                          color: Colors.white /* Backgrounds-Primary */,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 20,
                          children: [
                            Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 10,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 12,
                                      children: [
                                        SizedBox(
                                          width: 46,
                                          child: Text(
                                            'Hạng',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 17,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              height: 1.29,
                                              letterSpacing: -0.43,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 201,
                                          child: Text(
                                            'Thông tin người dùng',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 17,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              height: 1.29,
                                              letterSpacing: -0.43,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 66,
                                          child: Text(
                                            'Điểm',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
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
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 12,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black.withValues(alpha: 77) /* Miscellaneous-Generals-Border */,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 12,
                                      children: [
                                        SizedBox(
                                          width: 46,
                                          child: Text(
                                            '3',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 189,
                                          child: Text(
                                            'Đinh Trọng Phúc',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 66,
                                          child: Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
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
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFBB5E7C) /* Backgrounds-More-Color-Dusty-Rose */,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 12,
                                      children: [
                                        SizedBox(
                                          width: 46,
                                          child: Text(
                                            '4',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white /* Grayscale-White */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 189,
                                          child: Text(
                                            'Đinh Trọng Phúc',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white /* Grayscale-White */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 66,
                                          child: Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white /* Grayscale-White */,
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
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black.withValues(alpha: 77) /* Miscellaneous-Generals-Border */,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 12,
                                      children: [
                                        SizedBox(
                                          width: 46,
                                          child: Text(
                                            '5',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 189,
                                          child: Text(
                                            'Đinh Trọng Phúc',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 66,
                                          child: Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
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
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black.withValues(alpha: 77) /* Miscellaneous-Generals-Border */,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 12,
                                      children: [
                                        SizedBox(
                                          width: 46,
                                          child: Text(
                                            '6',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 189,
                                          child: Text(
                                            'Đinh Trọng Phúc',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 66,
                                          child: Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
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
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black.withValues(alpha: 77) /* Miscellaneous-Generals-Border */,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 12,
                                      children: [
                                        SizedBox(
                                          width: 46,
                                          child: Text(
                                            '7',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 189,
                                          child: Text(
                                            'Đinh Trọng Phúc',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 66,
                                          child: Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
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
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black.withValues(alpha: 77) /* Miscellaneous-Generals-Border */,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 12,
                                      children: [
                                        SizedBox(
                                          width: 46,
                                          child: Text(
                                            '8',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 189,
                                          child: Text(
                                            'Đinh Trọng Phúc',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 66,
                                          child: Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
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
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 1,
                                          color: Colors.black.withValues(alpha: 77) /* Miscellaneous-Generals-Border */,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 12,
                                      children: [
                                        SizedBox(
                                          width: 46,
                                          child: Text(
                                            '9',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 189,
                                          child: Text(
                                            'Đinh Trọng Phúc',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 66,
                                          child: Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
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
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      spacing: 12,
                                      children: [
                                        SizedBox(
                                          width: 46,
                                          child: Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 189,
                                          child: Text(
                                            'Đinh Trọng Phúc',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 15,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              height: 1.33,
                                              letterSpacing: -0.23,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 66,
                                          child: Text(
                                            '10',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 931,
                child: Container(
                  width: 393,
                  height: 83,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 393,
                          height: 83,
                          decoration: ShapeDecoration(
                            color: Colors.white /* Miscellaneous-Tab-Bars-BG-FIll */,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.30,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: Colors.black.withValues(alpha: 77) /* Miscellaneous-Generals-Border */,
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 7,
                                child: Container(
                                  width: 393,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    spacing: 83,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: -1.02,
                                                top: 28,
                                                child: SizedBox(
                                                  width: 100.30,
                                                  child: Text(
                                                    'Trang chủ',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: const Color(0xFF999999) /* Miscellaneous-Tab-Bars-Tab-Unselected */,
                                                      fontSize: 10,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 18.70,
                                                top: 0,
                                                child: Container(
                                                  width: 61.41,
                                                  height: 24,
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 24,
                                                        height: 24,
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: BoxDecoration(),
                                                        child: Stack(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: -1.02,
                                                top: 28,
                                                child: SizedBox(
                                                  width: 100.30,
                                                  child: Text(
                                                    'Luyện tập',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: const Color(0xFF999999) /* Miscellaneous-Tab-Bars-Tab-Unselected */,
                                                      fontSize: 10,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 18.95,
                                                top: 0,
                                                child: Container(
                                                  width: 61.41,
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 24,
                                                        height: 24,
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: BoxDecoration(),
                                                        child: Stack(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: -1.02,
                                                top: 28,
                                                child: SizedBox(
                                                  width: 100.30,
                                                  child: Text(
                                                    'Xếp hạng',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: const Color(0xFF5875B8) /* Miscellaneous-Tab-Bars-Tab-Selected */,
                                                      fontSize: 10,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 17.95,
                                                top: 0,
                                                child: Container(
                                                  width: 61.41,
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 24,
                                                        height: 24,
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: BoxDecoration(),
                                                        child: Stack(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: -1.02,
                                                top: 28,
                                                child: SizedBox(
                                                  width: 100.30,
                                                  child: Text(
                                                    'Tài khoản',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: const Color(0xFF999999) /* Miscellaneous-Tab-Bars-Tab-Unselected */,
                                                      fontSize: 10,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 18.20,
                                                top: 0,
                                                child: Container(
                                                  width: 61.41,
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 24,
                                                        height: 24,
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: BoxDecoration(),
                                                        child: Stack(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 980,
                child: Container(
                  width: 393,
                  height: 34,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 269,
                        top: 28,
                        child: Container(
                          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                          width: 144,
                          height: 5,
                          decoration: ShapeDecoration(
                            color: Colors.black /* ✦-Special-System-UI-Home-Indicator */,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 393,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 54,
                        padding: const EdgeInsets.only(top: 21),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 134,
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 16, right: 6),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        spacing: 10,
                                        children: [
                                          Text(
                                            '9:41',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black /* Texts-Primary */,
                                              fontSize: 17,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              height: 1.29,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(width: 124, height: 10),
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 6, right: 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        spacing: 7,
                                        children: [
                                          Opacity(
                                            opacity: 0.35,
                                            child: Container(
                                              width: 25,
                                              height: 13,
                                              decoration: ShapeDecoration(
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 1,
                                                    color: Colors.black /* Texts-Primary */,
                                                  ),
                                                  borderRadius: BorderRadius.circular(4.30),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 21,
                                            height: 9,
                                            decoration: ShapeDecoration(
                                              color: Colors.black /* Texts-Primary */,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(2.50),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 44,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 88,
                                    top: 11,
                                    child: SizedBox(
                                      width: 218,
                                      child: Text(
                                        'Bảng xếp hạng',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white /* Grayscale-White */,
                                          fontSize: 17,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 1.29,
                                          letterSpacing: -0.43,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 355,
                                    top: 0,
                                    child: Container(
                                      width: 38,
                                      height: 44,
                                      padding: const EdgeInsets.only(top: 11, right: 16, bottom: 11),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        spacing: 16,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            spacing: 6,
                                            children: [
                                              Container(
                                                width: 22,
                                                height: 22,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(),
                                                child: Stack(),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
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
      ],
    );
  }
}