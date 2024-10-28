import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'descripcion_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final String descripcionLorem = "Las Bahamas son conocidas por sus playas de arena blanca, aguas cristalinas y arrecifes de coral. Esto las convierte en un destino popular para el turismo de playa y actividades acuáticas como el buceo y el snorkel.\n"
  "Las Bahamas tienen un clima tropical, cálido y húmedo durante gran parte del año. La temporada de huracanes se extiende desde junio hasta noviembre, y el archipiélago ha experimentado huracanes devastadores, como el Huracán Dorian en 2019.";
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 37, 55, 246)),
        ),
        home: Scaffold(
         // appBar: AppBar(
          //  title: Text("Hola Mundo bueno"),
         // ),
          //body: DescripcionPlace("Las Bahamas", 4, descripcionLorem),
          //body: ReviewList(),
          body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescripcionPlace("Las Bahamas", 4, descripcionLorem),
                ReviewList()
              ],
            ),
            HeaderAppbar()
          ],
          
          ),
        ),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = '';

  // ↓ Add this.
  void getNext() {

    current = 'Comida mi patron 1 2 3 thrtyh4';
    notifyListeners();
    }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Scaffold(
      body: Column(
        children: [
          Text('Aqui una verdadera idea:'),
          BigCard(pair: pair),

           // ↓ Add this.
          ElevatedButton(
            onPressed: () {
             appState.getNext();  // ← This instead of print().
            },
            child: Text('Next'),
          ),

        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final String pair;

  @override
  Widget build(BuildContext context) {
      //final theme = Theme.of(context);
    return Card(
      color: const Color.fromARGB(255, 77, 255, 64),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(pair)
      ),
    );
  }
}