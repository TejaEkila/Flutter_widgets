// ignore_for_file: must_be_immutable, unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';


class Loop extends StatelessWidget {
   Loop({super.key});
 List<String> imagePaths = List.generate(4, (index) => 'images/news/images${index + 1}.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODAY NEWS'),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
            SizedBox(
            height: 400,
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.amber,
                      height: 20,
                      width: 20,
                      child: Image.asset(imagePaths[index],fit: BoxFit.cover,),
                    ),
                  );
                },
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 560,
                minHeight: 200, // Set the maximum width for the text
              ),
              child: RichText(text: 
              const TextSpan(
                children: [
                  TextSpan(text:    'Amid Delhi air pollution, Supreme Court\'s strong words for Punjab over stubble burning: \'Stop it.\n',style: TextStyle(fontSize: 25,color: Colors.deepPurple,fontWeight:FontWeight.w500)),
                  TextSpan(text: 'Delhi air pollution: The Supreme Court directed Punjab, Delhi, Uttar Pradesh and Rajasthan to stop stubble burning “forthwith”\nThe Supreme Court on Tuesday pulled up the Punjab government over stubble burning while thick clouds of smog shrouded parts of Delhi as the air quality across the national capital continued to remain in the \'severe\' category. It observed that there can\'t be a political battle all the time. “We want it (stubble burning) stopped. We don\'t know how you do it, it’s your job. But it must be stopped. Something has to be done immediately,” the Supreme Court to the Punjab government.',style: TextStyle(fontSize: 16,color: Colors.white))
                ]
              )
              )
            ),
            SizedBox(
             height: 300,
             width: 500,
              child: Center(
                child: Container(
                  child: Lottie.asset('lottieimg/thankyou.json'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
