import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leduc_login/pages/page_tutorial.dart';
import 'package:leduc_login/pages/login_page.dart';
import 'package:leduc_login/pages/page_inicial.dart';
import 'package:leduc_login/constant/app_constant.dart';
import 'package:leduc_login/constant/tutorial_constant.dart';

void main() {
  runApp(const MaterialApp(
    home: TutorialPage(), 
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos as cores principais
    const Color primaryColor = Colors.purple;
    const Color scaffoldBackgroundColor = Color(0xFFF0F0F0);

    return MaterialApp(
      title: 'LeDuc App',
      // Define a SplashScreen como a primeira tela a ser exibida
      home: const SplashScreen(),
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Classe da SplashScreen que mostra a imagem e navega para a próxima tela
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Inicia um temporizador de 3 segundos
    Timer(
      const Duration(seconds: 3),
      () {
        // Verifica se o widget ainda está montado antes de navegar
        if (mounted) {
          // Após o temporizador, navega para a SelectionPage
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) => const SelectionPage(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold com a cor de fundo e a imagem do camaleão
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      body: Center(
        child: Image.asset(
          // O caminho da sua imagem que você declarou no pubspec.yaml
          'assets/camaleãoMeme.jpg',
          width: 250, 
        ),
      ),
    );
  }
}

// A sua tela de seleção de perfil original
class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Colors.purple;
    const Color scaffoldBackgroundColor = Color(0xFFF0F0F0);

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        print('Botão "Sou aluno(a)" pressionado!');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 0,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sou aluno(a)',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.volume_up, color: Colors.white),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 50),

                  Container(
                    height: 1,
                    width: 300,
                    color: Colors.grey.shade400,
                  ),

                  const SizedBox(height: 50),

                  TextButton(
                    onPressed: () {
                      print('Botão "Educadores" pressionado!');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Educadores e instituições de ensino',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.volume_up,
                          color: primaryColor,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/vetor1.svg',
              width: 150,
              height: 150,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SvgPicture.asset(
              'assets/vetor2.svg',
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
