import 'dart:async';

import 'package:flutter/material.dart';


class Animation2 extends StatefulWidget {
  const Animation2({super.key});

  @override
  State<Animation2> createState() => _Animation2State();
}

class _Animation2State extends State<Animation2> {
  int currentindex = 0;
  final List<Color> _color = [
    Colors.amberAccent,
    Colors.red,
    Colors.pink,
  ];
  late Timer animation;
  void init() {
    super.initState();
    animation = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        currentindex = (currentindex + 1) % _color.length;
      });
    });
  }

  void dispose() {
    animation.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          color: _color[currentindex],
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
