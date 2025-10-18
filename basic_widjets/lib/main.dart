import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ---------------- Ejemplo anterior ----------------
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.green.shade100,
              height: 200,
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(color: const Color.fromARGB(255, 19, 34, 163)),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(color: const Color.fromARGB(255, 189, 8, 8)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ---------------- Nuevo bloque (Ejemplo 7) ----------------
            Container(
              padding: const EdgeInsets.all(16),
              width: 250,
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.amber, width: 2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // ← cambia entre start, center y end
                children: [
                  // Row con avatar e ícono
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.person, color: Colors.black),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Textos con información
                  const Text(
                    "Nombre: Marcus Fenix",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text("Correo: marcus.fenix@gears.com"),
                  const Text("Teléfono: +52 123 456 7890"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
