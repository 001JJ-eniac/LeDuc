import 'package:flutter/material.dart';

// O widget que representa a sua tela
class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de título na parte superior
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.white,
      ),
      // Cor de fundo da tela
      backgroundColor: const Color(0xFFF0F0F0),
      body: Center(
        child: Image.asset(
          // O caminho da sua imagem que você declarou no pubspec.yaml
          'assets/camaleãoMeme.jpg',
          width: 250, // Ajuste o tamanho da imagem conforme necessário
        ),
      ),
    );
  }
}