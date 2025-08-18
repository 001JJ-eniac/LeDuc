import 'package:flutter/material.dart';
import '../constant/tutorial_constant.dart';
import '../style/app_tutorial.dart';
import '../widgets/background_decoration.dart';
import '../widgets/sound_icon_widgets.dart';
import '../services/service_tutorial.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TutorialStyles.backgroundColor,
      body: Stack(
        children: [
          const BackgroundDecoration(),
          _buildMainContent(),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(TutorialStyles.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTitleSection(),
            const SizedBox(height: TutorialStyles.mediumSpacing),
            const SoundIconWidget(),
            const SizedBox(height: TutorialStyles.mediumSpacing),
            _buildInstructionText(),
            const SizedBox(height: TutorialStyles.largeSpacing),
            _buildNextButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleSection() {
    return Column(
      children: [
        const Text(
          TutorialConstants.mainTitle,
          style: TutorialStyles.titleStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: TutorialStyles.smallSpacing),
        const Text(
          TutorialConstants.subtitle,
          style: TutorialStyles.subtitleStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildInstructionText() {
    return const Text(
      TutorialConstants.instructionText,
      style: TutorialStyles.instructionStyle,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildNextButton() {
    return ElevatedButton(
      onPressed: TutorialService.handleNextButtonPress,
      style: TutorialStyles.primaryButtonStyle,
      child: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
        size: TutorialStyles.arrowIconSize,
      ),
    );
  }
}