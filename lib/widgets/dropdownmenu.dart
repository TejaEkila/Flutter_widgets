// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class DropDownmenu extends StatefulWidget {
  const DropDownmenu({super.key});

  @override
  State<DropDownmenu> createState() => _DropDownmenuState();
}

class _DropDownmenuState extends State<DropDownmenu> {
  String selectedvalue = 'male';

  List<String> gender = ['male', 'female', 'others'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
              padding: EdgeInsets.only(top: 0),
              child: Center(
                  child: Text(
                'Gender',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ))),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text(
              selectedvalue,
              style: const TextStyle(fontSize: 30),
            ),
          ),
          DropdownButton<String>(
              value: selectedvalue,
              items: gender.map(
                (String genders) {
                  return DropdownMenuItem<String>(
                    child: Text(genders),
                    value: genders,
                  );
                },
              ).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  selectedvalue = newvalue!;
                });
              })
        ],
      ),
    );
  }
}
