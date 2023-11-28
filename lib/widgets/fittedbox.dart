// ignore_for_file: must_be_immutable, use_super_parameters

import 'package:flutter/material.dart';

class MyFittedBox extends StatelessWidget {
  MyFittedBox({Key? key}) : super(key: key);

  bool v = false;

  double load = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 210, 210),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 140),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Column(children: [
                    //Text("Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN",maxLines: 4,),
                    Row(
                      children: [
                        //Text("Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN",maxLines: 4,),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 15, 210, 210),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/indicator');
                          },
                          child: Image.asset('lib/img.png'),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Image.asset('lib/img.png'),
                      ],
                    ),
                    Row(
                      children: [
                        //Text("Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN",maxLines: 4,),

                        Image.asset('lib/img.png'),
                        const SizedBox(
                          width: 40,
                        ),
                        Image.asset('lib/img.png'),
                      ],
                    ),
                  ],),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
