import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BoxVx extends StatelessWidget {
  const BoxVx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.amber100,
      // body: VxBox(child: Text('hey').text.pink700.size(30).makeCentered()).roundedSM.height(200).width(300).linearGradient([
      //   Vx.amber500,
      //   Vx.pink400,
      //   Vx.yellow400
      // ]).shadowLg
      
      // .makeCentered(),
      body: 'hey bro whatsapp'.text.white.make().box.orange400.alignCenter.square(300).roundedSM.shadow.makeCentered(),
    );
  }
}
