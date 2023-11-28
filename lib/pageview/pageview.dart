import 'package:flutter/material.dart';

class PageViewC extends StatefulWidget {
  const PageViewC({super.key});

  @override
  State<PageViewC> createState() => _PageViewCState();
}

class _PageViewCState extends State<PageViewC> {
  List<String> imagePaths = List.generate(3, (index) => 'lib/images/img${index + 1}.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: SizedBox(
          height: 300,
          width: 400,
          child: PageView.builder(
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              
              return Image(image: AssetImage(imagePaths[index]));
            },
          ),
        ),
      ),
    );
  }
}
