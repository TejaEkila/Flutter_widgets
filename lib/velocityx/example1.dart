// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Example1 extends StatelessWidget {
  const Example1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // GridView.builder(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2, // Adjust the number of columns as needed
          //   ),
          //   itemBuilder: (context, index) {
          //     return VxBox(
          //       child: 'hey bay'
          //           .text
          //           .white
          //           //.hidePartial
          //           .hairLine
          //           .blue900
          //           .make()
          //           .onTap(() { })
          //           .centered()
          //           .randomBox()
          //           .lightTheme()
          //           .circle()
          //           .shadow2xl,
          //     )
          //         .make()
          //         .p4();
          //   },
          //   itemCount: 10,
          // ),
          Center(child: VxTextBuilder('hey bro').make()),
        ],
      ),
    );
  }
}
