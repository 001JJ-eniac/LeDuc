import 'package:flutter/material.dart';
import '../style/app_tutorial.dart';

class SoundIconWidget extends StatelessWidget {
  const SoundIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildMainCircle(),
        _buildLeftCircle(),
        _buildRightCircle(),
        _buildSoundIcon(),
      ],
    );
  }

  Widget _buildMainCircle() {
    return Container(
      width: TutorialStyles.mainCircleSize,
      height: TutorialStyles.mainCircleSize,
      decoration: const BoxDecoration(
        color: TutorialStyles.lightGreen,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildLeftCircle() {
    return Positioned(
      left: 20,
      child: Container(
        width: TutorialStyles.leftCircleSize,
        height: TutorialStyles.leftCircleSize,
        decoration: const BoxDecoration(
          color: TutorialStyles.darkPurple,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget _buildRightCircle() {
    return Positioned(
      right: 20,
      child: Container(
        width: TutorialStyles.rightCircleSize,
        height: TutorialStyles.rightCircleSize,
        decoration: const BoxDecoration(
          color: TutorialStyles.darkPurple,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Widget _buildSoundIcon() {
    return Icon(
      Icons.volume_up,
      size: TutorialStyles.iconSize,
      color: Colors.indigo.shade800,
    );
  }
}