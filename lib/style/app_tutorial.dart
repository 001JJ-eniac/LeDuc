import 'package:flutter/material.dart';

class TutorialStyles {
  // Cores
  static const Color primaryColor = Colors.purple;
  static const Color backgroundColor = Color(0xFFE6E6FA);
  static const Color lightGreen = Color(0xFFC8E6C9);
  static const Color darkPurple = Color(0xFF8A2BE2);
  static const Color textColor = Colors.black87;
  static const Color subtitleColor = Colors.black54;
  
  // Estilos de texto
  static const TextStyle titleStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  
  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: subtitleColor,
  );
  
  static const TextStyle instructionStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: subtitleColor,
  );
  
  // Estilo do botão
  static ButtonStyle get primaryButtonStyle => ElevatedButton.styleFrom(
    backgroundColor: primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    elevation: 5,
  );
  
  // Dimensões
  static const double defaultPadding = 24.0;
  static const double smallSpacing = 8.0;
  static const double mediumSpacing = 40.0;
  static const double largeSpacing = 60.0;
  
  // Dimensões dos círculos
  static const double mainCircleSize = 180.0;
  static const double leftCircleSize = 60.0;
  static const double rightCircleSize = 40.0;
  static const double iconSize = 80.0;
  static const double arrowIconSize = 30.0;
  
  // Dimensões dos elementos de fundo
  static const double topBackgroundSize = 150.0;
  static const double bottomBackgroundSize = 200.0;
}