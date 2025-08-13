import 'package:flutter/material.dart';

// O DashboardPage recebe o nome do usuário como um parâmetro no construtor.
class InicioProf extends StatelessWidget {
  final String userName;

  const InicioProf({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    // Definimos as cores para um visual mais agradável
    const Color primaryColor = Color(0xFF6A1B9A);
    const Color secondaryColor = Colors.green;
    const Color backgroundColor = Color(0xFFF3F2F1);
    const Color shadowColor = Color(0xFFD4D4D4);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Barra superior com ícones
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.settings, color: primaryColor),
                    onPressed: () {
                      print('Botão de Configurações pressionado!');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.person, color: primaryColor),
                    onPressed: () {
                      print('Botão de Perfil pressionado!');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Texto "Olá, João" sem o Card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Olá, $userName', // Exibe o nome do usuário recebido
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Botão "Gerenciar turmas"
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton.icon(
                  onPressed: () {
                    print('Botão "Gerenciar turmas" pressionado!');
                  },
                  icon: const Icon(Icons.tune, color: Colors.white),
                  label: const Text(
                    'Gerenciar turmas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 5,
                    shadowColor: Colors.black.withOpacity(0.3),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Botão "Ver e baixar relatórios"
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton.icon(
                  onPressed: () {
                    print('Botão "Ver e baixar relatórios" pressionado!');
                  },
                  icon: const Icon(Icons.download, color: Colors.white),
                  label: const Text(
                    'Ver e baixar relatórios',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 5,
                    shadowColor: Colors.black.withOpacity(0.3),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Painel de insights (gráfico)
              Expanded(
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      'Gráfico de desempenho (insights)',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: secondaryColor,
        unselectedItemColor: Colors.grey[600],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Trilhas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Relatórios',
          ),
        ],
        currentIndex: 1, // 'Início'
      ),
    );
  }
}
