import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const new({super.key});

// Harcodear
  final cosas = const [
  'arbol',
   'mar',
    'ciudad',
     'camion'];

    final animales = const [
    'caballo',
    'pikachu',
    'shadow',
    'gato'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 3', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 49, 1, 51),
      ),
      body: ListView(
        children: [
          ...cosas
              .map(
                (cosas) => ListTile(
                  leading: const Icon(Icons.pets),
                  title: Text(cosas),
                  subtitle: Text('Cositas lol'),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  tileColor: Colors.cyanAccent,
                  textColor: Colors.amberAccent,
                ),
              ),
          Divider(),
           ...animales
              .map(
                (cosas) => ListTile(
                  leading: const Icon(Icons.pets),
                  title: Text(cosas),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  tileColor: Colors.lightBlue,
                  textColor: Colors.white54,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),    
        ],
      ),
    );
  }
}
