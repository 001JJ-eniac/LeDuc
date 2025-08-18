import 'package:flutter/material.dart';
import '../style/app_tutorial.dart';

class BackgroundDecoration extends StatelessWidget {
  const BackgroundDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildTopRightCircle(),
        _buildBottomLeftCircle(),
      ],
    );
  }

  Widget _buildTopRightCircle() {
    return Positioned(
      top: -10,
      right: -10,
      child: Container(
        width: TutorialStyles.topBackgroundSize,
        height: TutorialStyles.topBackgroundSize,
        decoration: BoxDecoration(
          color: TutorialStyles.primaryColor,
          borderRadius: BorderRadius.circular(TutorialStyles.topBackgroundSize / 2),
        ),
      ),
    );
  }

  Widget _buildBottomLeftCircle() {
    return Positioned(
      bottom: -50,
      left: -50,
      child: Container(
        width: TutorialStyles.bottomBackgroundSize,
        height: TutorialStyles.bottomBackgroundSize,
        decoration: BoxDecoration(
          color: TutorialStyles.lightGreen,
          borderRadius: BorderRadius.circular(TutorialStyles.bottomBackgroundSize / 2),
        ),
      ),
    );
  }
}