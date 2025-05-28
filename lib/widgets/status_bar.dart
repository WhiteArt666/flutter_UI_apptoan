import 'package:flutter/material.dart';
Widget _buildStatusBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '9:41',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              height: 1.29,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Opacity(
                opacity: 0.35,
                child: Container(
                  width: 25,
                  height: 13,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(4.3),
                  ),
                ),
              ),
              const SizedBox(width: 7),
              Container(
                width: 21,
                height: 9,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(2.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }