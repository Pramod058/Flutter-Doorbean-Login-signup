// Or with divider used below the Login Button





import 'package:flutter/material.dart';

class GradientLeftLine extends StatelessWidget {
  final double height;

  const GradientLeftLine({Key? key, this.height = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFFFFFF),
            Color(0xFF02111B),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}

class GradientRightLine extends StatelessWidget {
  final double height;

  const GradientRightLine({Key? key, this.height = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF02111B),
            Color(0xFFFFFFFF),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}

class GradientLineWithGap extends StatelessWidget {
  final double height;

  const GradientLineWithGap({Key? key, this.height = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: GradientLeftLine(height: height),
        ),
        const SizedBox(
          width: 10.5,
        ),
        const Text(
          'OR',
          style: TextStyle(fontSize: 16.0, color: Colors.black, fontFamily: 'Times New Roman'),
        ),
        const SizedBox(
          width: 10.5,
        ),
        Flexible(
          child: GradientRightLine(height: height),
        ),
      ],
    );
  }
}
