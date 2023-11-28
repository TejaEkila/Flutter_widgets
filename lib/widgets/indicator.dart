// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Indicator extends StatefulWidget {
  const Indicator({super.key});

  @override
  State<Indicator> createState() => _IndicatorState();
}

class _IndicatorState extends State<Indicator> {
   String? gender;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color.fromARGB(255, 223, 106, 70),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ExpansionTile(
                backgroundColor: const Color.fromARGB(255, 71, 9, 207),
                title: const Text('select gender',style: TextStyle(color: Colors.amber,),),
                children: [
                  RadioListTile(
                    title: const Text("Male",style: TextStyle(color:Colors.green),),
                    value: "male",
                    controlAffinity: ListTileControlAffinity.trailing,
                    // activeColor: Colors.purpleAccent,
                    overlayColor: const MaterialStatePropertyAll(Colors.green),
                    tileColor: Colors.purple,
                    //subtitle: Text("Radio List Tile"),
                    //fillColor:MaterialStatePropertyAll(Colors.green),
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                        print(gender);
                      });
                    },
                  ),
                  RadioListTile(
                    tileColor: Colors.purple,
                    overlayColor: const MaterialStatePropertyAll(Colors.green),
                    title: const Text("Female"),
                    value: "female",
                    // subtitle: Icon(Icons.female),
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                        print(gender);
                      });
                    },
                  ), 
                  RadioListTile(
                    tileColor: Colors.purple,
                    overlayColor: const MaterialStatePropertyAll(Colors.green),
                    title: const Text("Other"),
                    value: "other",
                    groupValue: gender, 
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                       
                      });
                    },
                  )
                ],
                
              ),
            ),
            const Expanded(
              child: TextField(

              ),
              )
          ],
        ),
        
      ),
    );
  }
}
