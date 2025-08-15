import 'package:flutter/material.dart';

class AppStyles {
  // Cores da aplicação
  static const Color primaryColor = Color(0xFF8A2BE2); // Azul Violeta
  static const Color backgroundColor = Colors.white; // Branco
  static const Color textColor = Colors.black87; // Preto suave
  static const Color errorColor = Colors.redAccent; // Vermelho para erros
  static const Color linkColor = Colors.blue; // Azul para links
  static const Color hintColor = Colors.grey; // Cinza para dicas
  static const Color fieldBackgroundColor = Color(0xFFF5F5F5); // Cinza claro para campos

  // Estilos de texto
  static const TextStyle labelStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle linkStyle = TextStyle(
    fontSize: 12,
    color: linkColor,
  );

  static const TextStyle infoTextStyle = TextStyle(
    fontSize: 12,
    color: hintColor,
    fontFamily: 'Roboto',
  );

  // Estilos de input
  static InputDecoration getInputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: fieldBackgroundColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    );
  }

  // Estilo do botão
  static ButtonStyle get primaryButtonStyle => ElevatedButton.styleFrom(
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 5,
  );

  // Dimensões
  static const double defaultPadding = 24.0;
  static const double smallSpacing = 8.0;
  static const double mediumSpacing = 25.0;
  static const double largeSpacing = 40.0;
  static const double topSpacing = 80.0;
  static const double buttonWidth = 150.0;
}