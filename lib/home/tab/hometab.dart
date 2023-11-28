import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Card(
                  
                  color: const Color.fromARGB(255, 245, 239, 179),
                  elevation: 20,
                  child: ListTile(
                    
                    onTap: () {},
                    leading: const CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      ),
                    ),
                ),
                    
                    
                // const ExpansionTile(
                //   title: TextField(
                //     style: TextStyle(color: Colors.white),
                //     decoration: InputDecoration(
                //       enabledBorder: OutlineInputBorder(
                //           borderSide: BorderSide(
                //               color: Color.fromRGBO(102, 103, 102, 1))),
                //       focusedBorder: OutlineInputBorder(
                //           borderSide: BorderSide(
                //               color: Color.fromARGB(255, 201, 197, 255))),
                //       fillColor: Color.fromARGB(26, 236, 186, 186),
                //       filled: true,
                //       hintText: 'typing....',
                //       hintStyle: TextStyle(color: Colors.white),
                //     ),
                //   ),
                //   trailing: Icon(
                //     Icons.send,
                //     color: Colors.white,
                //   ),
                //   // children: [],
                // )
              ],
            );
          })
    );
  }
}
