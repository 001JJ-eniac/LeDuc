import 'package:flutter/material.dart';
import '../constant/tutorial_constant.dart';

class TutorialService {
  static void handleNextButtonPress() {
    debugPrint(TutorialConstants.buttonPressedMessage);
    // TODO: Implementar navegação para próxima tela
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => const ProximaTela()),
    // );
  }
}