import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AMAAD'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // aqui ação para login
            },
            icon: Icon(Icons.login),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                // Coloque a ação do botão aqui
              },
              child: Ink(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.yellow, Colors.red],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 10),
                    Icon(Icons.warning, color: Colors.red, size: 30),
                    SizedBox(width: 25),
                    Text(
                      'Avisos',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Coloque a ação do botão aqui
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                    200, 50), // Define a largura mínima e a altura do botão
              ),
              child: Container(
                width: 200,
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.warning, color: Colors.blue, size: 30),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Próximas reuniões',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Coloque a ação do botão aqui
                Navigator.pushNamed(context, '/calendario');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50),
              ),
              child: Container(
                width: 200,
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.calendar_month, color: Colors.blue, size: 30),
                    SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        'Calendário de eventos',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Pix: (13) 991234-5678'),
                      content: const Text(
                          'O código Pix foi copiado para a área de transferência'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text(
                            'Fechar',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
                Clipboard.setData(ClipboardData(text: '(13) 991234-5678'));
                // Coloque a ação do botão aqui
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                    200, 50), // Define a largura mínima e a altura do botão
              ),
              child: Container(
                width: 200,
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.favorite, color: Colors.red, size: 30),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'Quero Doar',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Coloque a ação do botão aqui
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                    200, 50), // Define a largura mínima e a altura do botão
              ),
              child: Container(
                width: 200,
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.group, color: Colors.blue, size: 30),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        'Os Membros',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Coloque a ação do botão aqui
                Navigator.pushNamed(context, '/contato');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                    200, 50), // Define a largura mínima e a altura do botão
              ),
              child: Container(
                width: 200,
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.phone, color: Colors.blue, size: 30),
                    SizedBox(width: 5),
                    
                    Expanded(
                      child: Text(
                        'Telefones para contato',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Coloque a ação do botão aqui
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(
                    200, 50), // Define a largura mínima e a altura do botão
              ),
              child: Container(
                width: 200,
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.public, color: Colors.blue, size: 30),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'acesse nosso site',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
