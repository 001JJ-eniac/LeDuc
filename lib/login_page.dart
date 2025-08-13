import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:leduc_login/InicioProf.dart'; // Importe a nova tela

// A tela de login agora é um StatefulWidget para gerenciar o estado dos campos de texto.
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 
  final TextEditingController _codigoController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

 
  void _login() {
    const String codigoCorreto = '12345';
    const String senhaCorreta = 'teste123';
    const String nomeDoUsuario = 'Júlia';

    if (_codigoController.text == codigoCorreto && _senhaController.text == senhaCorreta) {
      // Credenciais corretas, navega para a DashboardPage
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InicioProf(userName: nomeDoUsuario),
        ),
      );
    } else {
      // Credenciais incorretas, mostra um alerta
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Erro de Login'),
          content: const Text('Código verificador ou senha incorretos.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  void dispose() {
  
    _codigoController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),

                  const Text(
                    'Código Verificador',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),

                  TextField(
                    controller: _codigoController, // Atrela o controlador
                    decoration: InputDecoration(
                      hintText: 'cod.',
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 12, color: Colors.grey, fontFamily: 'Roboto'),
                      children: [
                        const TextSpan(text: 'Descubra o seu código verificador '),
                        TextSpan(
                          text: 'aqui',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Link "aqui" do código foi tocado!');
                            },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),

                  const Text(
                    'Senha',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 8),

                  TextField(
                    controller: _senhaController, 
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'senha.',
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  GestureDetector(
                    onTap: () {
                      print('Link "Esqueceu a senha?" foi tocado!');
                    },
                    child: const Text(
                      'Esqueceu a senha?',
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  ),
                  const SizedBox(height: 40),

                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        onPressed: _login, // Chama a função de login
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF8A2BE2),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                        ),
                        child: const Text(
                          'Entrar',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(fontSize: 12, color: Colors.grey, fontFamily: 'Roboto'),
                        children: [
                          const TextSpan(text: 'Quer o LeDuc na sua organização?\n'),
                          const TextSpan(text: 'acesse '),
                          TextSpan(
                            text: 'aqui',
                            style: const TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Link "aqui" da organização foi tocado!');
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Botão de voltar
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
