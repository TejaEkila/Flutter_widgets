import 'package:flutter/material.dart';

class ListviewSeprate extends StatelessWidget {
  const ListviewSeprate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView.Separated"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("index $index "),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          if (index == 2) {
            return const FlutterLogo();
          } else if (index % 5 ==0) {
            return const Text('hey move',style: TextStyle(color: Colors.deepOrange,fontSize: 30),);
          }
          return const Divider(
            color: Colors.amber,
            thickness: 4,
          );
        },
        itemCount: 19,
      ),
    );
  }
}
