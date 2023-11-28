// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:indicator/Animation/animationexample1.dart';
import 'package:indicator/Animation/example2.dart';
import 'package:indicator/lottie/loop.dart';
import 'package:indicator/url/urls.dart';
import 'package:indicator/urllancher/url.dart';
//import 'package:indicator/pageview/pageview.dart';
import 'package:indicator/velocityx/cardvx.dart';
import 'package:indicator/widgets/indicator.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   const UrlLink(),
      routes: {
        '/indicator':(context) => const Indicator(),
      },
    );
  }
}
