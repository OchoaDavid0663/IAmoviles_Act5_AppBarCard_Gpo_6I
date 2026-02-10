import 'package:flutter/material.dart';

void main() => runApp(AppSimilares());

class AppSimilares extends StatelessWidget {
  const AppSimilares({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Similares",
      home: Medicamento(),
    );
  }
} //Fin clase AppConsultorio

class Medicamento extends StatelessWidget {
  const Medicamento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Similares Ochoa"),
        backgroundColor: const Color.fromARGB(255, 137, 228, 205),
        actions: [
          Icon(Icons.medical_information_rounded),
          Icon(Icons.medical_information_outlined),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 280,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                // Degradado aqua tenue
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFE0F2F1), // Aqua blanquecino
                    Color(0xFFB2DFDB), // Aqua suave
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Avatar circular con imagen de red
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: const CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage(
                        'https://raw.githubusercontent.com/OchoaDavid0663/IAmoviles_Act5_AppBarCard_Gpo_6I/refs/heads/main/ochoa.png',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Título
                  const Text(
                    'Abraham Ochoa',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3E50), // Color oscuro profundo
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Subtítulo temático
                  const Text(
                    'SIMILARES',
                    style: TextStyle(
                      fontSize: 13,
                      letterSpacing: 4,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF546E7A), // Gris azulado oscuro
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
