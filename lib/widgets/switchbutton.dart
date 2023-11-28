import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _switch = false;
  bool light = true;
  bool night = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light == true ? Colors.blueAccent : Colors.amberAccent,
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            _switch ? 'lib/images/img1.png' : 'lib/images/img2.png',
          ),
          Text('Switch $_switch'),
          Center(
            child: Transform.scale(
              scale: 2.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                     
                     
                       Switch(
                      value: _switch,
                      onChanged: (value) {
                        setState(() {
                          _switch = value;
                        });
                      }),
                    ],
              ),
            ),
          ),
//light or night change colours

          // Switch(
          //     value: night,
          //     onChanged: (bool v) {
          //       if (night == true) {
          //         setState(() {
          //           night = false;
          //         });
          //       } else {
          //         setState(() {
          //           night = true;
          //         });
          //       }
          //     }),
               AdvancedSwitch(
                
               enabled: light,
              // onChanged: (bool v) {
              //   if (light == true) {
              //     setState(() {
              //       light = false;
              //     });
              //   } else {
              //     setState(() {
              //       light = true;
              //     });
              //   }
              // },
              ),
              
        ],
        
      ),
    );
  }
}
