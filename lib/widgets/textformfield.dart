// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class TextFormfield extends StatefulWidget {
  const TextFormfield({super.key});

  @override
  State<TextFormfield> createState() => _TextFormfieldState();
}

class _TextFormfieldState extends State<TextFormfield> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 184, 234, 228),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 350),
          child: Column(
            children: [
              //name
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  onSaved: (newValue) {
                    name = newValue;
                  },
                  decoration: const InputDecoration(
                    enabled: true,
                    disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 5)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5)),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow, width: 5)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enetr name';
                    }
                    return null;
                  },
                ),
              ),
              //password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  onSaved: (newValue) {
                    password = newValue;
                  },
                  decoration: const InputDecoration(
                    enabled: true,
                    disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 5)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5)),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow, width: 5)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please eneter password ';
                    }
                    return null;
                  },
                ),
              ),
              TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print(name);
                      print(password);
                      print("validated");
                    }
                  },
                  child: const Text('sumbit'),
                  )
            ],
          ),
        ),
      ),
    );
  }

  void submit() {}
}
