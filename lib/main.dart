import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Slider'),
          ),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: HomePage(),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double valoreAttuale = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      // Valore di Partenza dell' Indicatore
      value: valoreAttuale,
      // Valore minimo
      min: 0,
      // Valore MASSIMO
      max: 100,
      // Suddivisione dei Valori
      divisions: 100,
      // Indica Visivamente il Valore Attuale
      label: valoreAttuale.toStringAsFixed(0),
      // Funzione che permette il Cambio di Valore con setState
      onChanged: (value) => setState(() => valoreAttuale = value),
    );
  }
}
