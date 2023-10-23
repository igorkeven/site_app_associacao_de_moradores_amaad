

import 'package:flutter/material.dart';

class TelaAnimada extends StatefulWidget {
  const TelaAnimada({super.key});

  @override
  _TelaAnimadaState createState() => _TelaAnimadaState();
}

class _TelaAnimadaState extends State<TelaAnimada>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..forward().then((value) => iniciarSegundaTela());

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _colorAnimation = ColorTween(begin: Colors.yellow, end: Colors.blue)
        .animate(_controller);
  }

 void iniciarSegundaTela() async {
    await Future.delayed(const Duration(seconds: 3));
     Navigator.pushReplacementNamed(context, '/homePage');
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          backgroundColor: _colorAnimation.value,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: _animation.value,
                  child: const Text(
                    ' AMAAD ',
                    style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Transform.scale(
                  scale: _animation.value,
                  child: const Text(
                    ' Associação dos Moradores e Amigos de Ana Dias ',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
