import 'package:flutter/material.dart';

class Doar extends StatelessWidget {
  const Doar({super.key});

  @override
  Widget build(BuildContext context) {
   

                return AlertDialog(
                  title: Text('Código de Doação'),
                  content: Text('O código foi copiado para a área de transferência!'),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Fechar'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
             
         
          
      
  }
}