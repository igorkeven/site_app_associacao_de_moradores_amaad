

import 'package:amaad/telas/avisos.dart';
import 'package:amaad/telas/calendario.dart';
import 'package:amaad/telas/contato.dart';
import 'package:amaad/telas/doar.dart';
import 'package:amaad/telas/homePage.dart';
import 'package:amaad/telas/membros.dart';
import 'package:amaad/telas/reunioes.dart';
import 'package:amaad/telas/site.dart';
import 'package:amaad/telas/telaAnimadaInicio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MeuAplicativo());
}

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const TelaAnimada(),
      routes: {
        '/homePage': (context) => const HomePage(),
        '/avisos': (context) => const Avisos(),
        '/proximasReunioes': (context) => const Reunioes(),
        '/calendario':(context) => const Calendario(),
        '/doar':(context) => const Doar(),
        '/membros':(context) => const Membros(),
        '/contato' :(context) => const Contato(),
        '/site':(context) => const Site(),
      },
    );
  }
}


