import 'package:flutter/material.dart';

class ReceiveData extends StatelessWidget {
  String name, email, address;
  ReceiveData({required this.name, required this.email, required this.address});


  @override
  Widget build(BuildContext context) {
  final TextEditingController _name = TextEditingController(text: name);
  final TextEditingController _email = TextEditingController(text: email);
  final TextEditingController _address = TextEditingController(text: address);
    return Scaffold(
      appBar: AppBar(
        title: Text("Receive Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
               controller: _name,
               decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Name",
               ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
               controller: _email,
               decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
               ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
               controller: _address,
               decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Address",
               ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}