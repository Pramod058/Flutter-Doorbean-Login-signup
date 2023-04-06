// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// Custom elevated buttons used in all over the app

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textcolor;
  final VoidCallback? onpressed;
  final width;
  final height;
  final String? icon;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.color,
    required this.width,
    this.icon,
    required this.height,
    required this.textcolor,
    required this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: icon != null
          ? OutlinedButton(
              onPressed: onpressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: color,
                side: const BorderSide(width: 1.0, color: Color(0xFFEFEAEA)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Image.asset(icon!),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 12,
                      color: textcolor,
                    ),
                  ),
                ],
              ),
            )
          : OutlinedButton(
              onPressed: onpressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: color,
                side: const BorderSide(width: 1.0, color: Color(0xFFEFEAEA)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: textcolor,
                ),
              ),
            ),
    );
  }
}
