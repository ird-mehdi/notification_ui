import 'package:flutter/material.dart';
import 'package:notification_ui/core/constant/app_colors.dart';
import 'dart:math';

import 'package:notification_ui/core/theme/Notification_screen.dart';

class CircularProgressBar extends StatelessWidget {
  final double progress; // Progress value (0.0 to 1.0)

  const CircularProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 130,
      child: CustomPaint(
        painter: CircularProgressPainter(
          progress: progress,
          outerStrokeWidth: eightPx, // Thickness of outer progress
          innerStrokeWidth: tenPx, // Thickness of background
          color:
              AppColors.memorizationCardProgressColor, // Active progress color
          backgroundColor: Color.fromRGBO(137, 87, 55, 0.2), // Background color
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${(progress * 100).toInt()}%', // Progress percentage
                style: TextStyle(
                  fontSize: sixteenPx,
                  fontWeight: FontWeight.w500,
                  color: AppColors.titleText,
                ),
              ),
              Text(
                'Completed',
                style: TextStyle(
                  fontSize: elevenPx,
                  color: AppColors.messageText, // Subtext color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularProgressPainter extends CustomPainter {
  final double progress;
  final double outerStrokeWidth;
  final double innerStrokeWidth;
  final Color color;
  final Color backgroundColor;

  CircularProgressPainter({
    required this.progress,
    required this.outerStrokeWidth,
    required this.innerStrokeWidth,
    required this.color,
    required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final outerRadius = (size.width / 2) - innerStrokeWidth / 2;
    final innerRadius = outerRadius - (innerStrokeWidth / 2);
    final double activeProgressOffset =
        innerStrokeWidth / 2; // Offset for active progress

    // Background circle
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = innerStrokeWidth;

    canvas.drawCircle(
        center, innerRadius + activeProgressOffset, backgroundPaint);

    // Active progress circle (half inside and half outside)
    final progressPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = outerStrokeWidth
      ..strokeCap = StrokeCap.round; // Rounded ends
    final startAngle = -pi / 2; // Starting at the top
    final sweepAngle = 2 * pi * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: innerRadius),
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Always repaint when progress changes
  }
}
