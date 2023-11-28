import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardVx extends StatelessWidget {
  const CardVx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.purple200,
      body: 'profile'.text.size(30).white.make().card.orange400.make().wh(300,400).centered(),
    );
  }
}
