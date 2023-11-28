// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:indicator/home/home.dart';
import 'package:indicator/home/like.dart';
import 'package:indicator/home/profile.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final List<Widget> pages = [
    const HomePage(),
    const LikedPage(),
    const ProfilePage(),
     
  ];

  void OnTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 132, 209, 248),
        unselectedItemColor: const Color.fromARGB(255, 95, 111, 120),
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        currentIndex: currentIndex,
        onTap: OnTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 116, 81, 35),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      
    );
  }
}
