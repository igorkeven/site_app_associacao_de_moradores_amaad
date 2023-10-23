// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contato extends StatelessWidget {
  const Contato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contato dos Membros da AMAAD'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _abrirWhatsApp(phoneNumber: '+5513997273701'),
              child: Text(
                'igor: (13) 997273701',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'FELIPE: (13) 997273701',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        )),
      ),
    );
  }



void _abrirWhatsApp({required String phoneNumber}) async {
    Uri url = Uri.parse("https://wa.me/$phoneNumber");
      
   

 if (!await launchUrl(url)) {
    throw Exception('Não foi possível abrir o WhatsApp');
  }


  
  }
}