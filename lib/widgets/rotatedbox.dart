import 'package:flutter/material.dart';

class Rotatedbox extends StatelessWidget {
  const Rotatedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: RotatedBox(

        quarterTurns: 2,
        child: Center(
          child: Stack(
            children: [
                Positioned(
                  child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  color: Colors.green,
                  
                  
                  ),
                ),
                 const Padding(
                   padding:  EdgeInsets.all(80),
                   child: Text('hey'),
                 ),
              ],
          ),
            
        ),
        
      ),
      
    );
  }
}