import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class Myanimation extends StatefulWidget {
  const Myanimation({super.key});

  @override
  State<Myanimation> createState() => _MyanimationState();
}

class _MyanimationState extends State<Myanimation> {
  double _width = 180;

  double _hight = 180;

  Color _color = const Color.fromARGB(255, 245, 188, 207);

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        children: [
          Gap(200),
          Center(
              child: AnimatedContainer(
            width: _width,
            height: _hight,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
            duration: const Duration(seconds: 10),
            curve: Curves.easeInOutCubicEmphasized,
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow_rounded),
          onPressed: () {
            setState(() {
              final random = Random();
           // _width = random.nextInt(500).toDouble();
            //_hight = random.nextInt(500).toDouble();
            _width = 100;
            _hight = 100;
            _color = Color.fromRGBO(
              random.nextInt(300),
              random.nextInt(300),
              random.nextInt(300),
              1,
            );
            _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
            });
          }
          ),
          
    );
  }
}
