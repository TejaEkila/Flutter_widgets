import 'package:flutter/material.dart';

class Fleable extends StatelessWidget {
  const Fleable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1000,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 3,
                    fit: FlexFit.loose,
                    child: Container(
                      height: 275,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown,
                      ), //BoxDecoration
                    ), //Container
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 5,
                    fit: FlexFit.loose,
                    child: Container(
                      height: 275,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                      ), //BoxDecoration
                    ), //Container
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                flex: 5,
                fit: FlexFit.loose,
                child: Container(
                  height: 475,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ), //BoxDecoration
                ), //Container
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 5,
                    fit: FlexFit.loose,
                    child: Container(
                      height: 275,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown,
                      ), //BoxDecoration
                    ), //Container
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 3,
                    fit: FlexFit.loose,
                    child: Container(
                      height: 275,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                        
                      ), //BoxDecoration
                    ), //Container
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  Flexible(
                    flex: 5,
                    fit: FlexFit.loose,
                    child: Container(
                      height: 275,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown,
                      ), //BoxDecoration
                    ), //Container
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 3,
                    fit: FlexFit.loose,
                    child: Container(
                      height: 275,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                      ), //BoxDecoration
                    ), //Container
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
