// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:indicator/home/tab/calls.dart';
import 'package:indicator/home/tab/hometab.dart';
import 'package:indicator/home/tab/story.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text('Whatsapp'),
            ),
            bottom: const TabBar(
              
              tabs: [

                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.smart_toy_rounded)),
                Tab(icon: Icon(Icons.call)),
              ],
            ),
          ),
          body: const TabBarView(children: [
            HomeTab(),
            Story(),
            Calls(),
          ]
          ),
        )
        );
  }
}
