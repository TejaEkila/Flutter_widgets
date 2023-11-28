import 'package:flutter/material.dart';

class ListviewCustom extends StatelessWidget {
  const ListviewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.custom(
          childrenDelegate: SliverChildListDelegate(
            List.generate(50, (index) {
              return Container(
                color: Colors.blueAccent,
                margin: const EdgeInsets.all(5),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: ListTile(
                      onTap: () {
                        //
                      },
                      
                      leading: const Icon(Icons.account_circle,
                            size: 40.0, color: Color.fromARGB(77, 190, 28, 28)),
                        title: Text('patient  ${index + 1}'),
                        subtitle: const Text('Tap on it for more imformation'),
                     ),
                  ),
                ),
              );

            }),
          ),
        ),
      ),
    );
  }
}
