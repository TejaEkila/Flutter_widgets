import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Url extends StatefulWidget {
  const Url({super.key});

  @override
  State<Url> createState() => _UrlState();
}

class _UrlState extends State<Url> {
  lunchUrl(anyUrl) async {
    var url = Uri.parse(anyUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: InkWell(
                  onTap: () {
                    lunchUrl("https://youtu.be/ShU3fd6jgL4?si=QrL1cRFIDi4D2Wpn");
                  },
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.purpleAccent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: InkWell(
                  onTap: () {
                    lunchUrl('https://youtu.be/rY37swJA2D8?si=NQ_45wT7tP0E1au8');
                  },
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.purpleAccent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: InkWell(
                  onTap: () {
                    lunchUrl('https://youtu.be/o7HHvYmYjHc?si=rjnfSsAyHPMMil3n');
                  },
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.purpleAccent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: InkWell(
                  onTap: () {
                    lunchUrl('https://youtu.be/32AxQWzZbjg?si=rnc2odjRFnovdXXp');
                  },
                  child: Container(
                    height: 300,
                    width: 300,
                    color: Colors.purpleAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
