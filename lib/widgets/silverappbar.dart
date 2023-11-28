

import 'package:flutter/material.dart';

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              shape: ContinuousRectangleBorder(
                  side: BorderSide(
                    color: Color.fromARGB(255, 249, 224, 224),
                    width: 3, 
                  ),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(30),
                      ),
                      ),
              actions: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.send),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.coffee_maker),
                ),
              ],
              backgroundColor: Color.fromARGB(255, 247, 173, 173),
              floating: true,
              pinned: true,
              snap: false, //The property snap can only be set to true if floating is also true.
              expandedHeight: 200.0,
              // collapsedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("C O F F E E"),
                background: ColoredBox(color: Color.fromARGB(255, 111, 131, 240)),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: index.isOdd ? const Color.fromARGB(255, 244, 148, 148) : Colors.black12,
                    height: 80.0,
                    child: Center(
                      child: Text('$index', textScaleFactor: 2),
                    ),
                  );
                },
                childCount: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}