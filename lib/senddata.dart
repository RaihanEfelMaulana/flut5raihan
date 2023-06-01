import 'package:flut5raihan/receivedata.dart';
import 'package:flutter/material.dart';

class MyData extends StatefulWidget {
  const MyData({super.key});

  @override
  State<MyData> createState() => _MyDataState();
}

class _MyDataState extends State<MyData> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _address = TextEditingController();
  String nama = "";
  String email = "";
  String address = "";

  void getDataMahasiswa(){
    setState(() {
      nama = _name.text;
      email = _email.text;
      address = _address.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: Text("Student Record", style: TextStyle(
                                                fontSize: 25, 
                                                color: Colors.redAccent, 
                                                fontWeight: FontWeight.bold)),
            ),
            Padding(padding:const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: TextField(
              controller: _name,
              autocorrect: true,
              decoration: const InputDecoration(
                labelText: "Nama : ",
                hintText: "input nama",
                labelStyle: TextStyle(
                  fontSize: 25, 
                  color: Colors.redAccent, 
                  fontWeight: FontWeight.bold),
                  suffixIcon: Align(widthFactor: 1.0,heightFactor: 1.0,
                    child: Icon(Icons.face_outlined),),
                  filled: true,
                  fillColor: Colors.greenAccent,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(25),)

                  )
                  
                ),
                maxLength: 30,

              ),
            ),

            Padding(padding:const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: TextField(
              controller: _email,
              autocorrect: true,
              decoration: const InputDecoration(
                labelText: "Email : ",
                hintText: "input email : ",
                labelStyle: TextStyle(
                  fontSize: 25, 
                  color: Colors.redAccent, 
                  fontWeight: FontWeight.bold),
                  suffixIcon: Align(widthFactor: 1.0,heightFactor: 1.0,
                    child: Icon(Icons.email),),
                  filled: true,
                  fillColor: Colors.greenAccent,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(25),)

                  )
                  
                ),
                maxLength: 50,

              ),
            ),

            Padding(padding:const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: TextField(
              controller: _address,
              autocorrect: true,
              decoration: const InputDecoration(
                labelText: "Address : ",
                hintText: "input address : ",
                labelStyle: TextStyle(
                  fontSize: 25, 
                  color: Colors.redAccent, 
                  fontWeight: FontWeight.bold),
                  suffixIcon: Align(widthFactor: 1.0,heightFactor: 1.0,
                    child: Icon(Icons.place),),
                  filled: true,
                  fillColor: Colors.greenAccent,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(25),)

                  )
                  
                ),
                maxLength: 50,

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> 
                  ReceiveData(name: _name.text, email: _email.text, address: _address.text,)),

                  );
                },child: Text("Send Data"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}