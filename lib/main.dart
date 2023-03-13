// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController namaDepan = TextEditingController();
  TextEditingController namaBelakang = TextEditingController();
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          title: Text(
            "Text Field",
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //TextField(
                //maxLines: 2,
                //maxLength: 10,
                //keyboardType: TextInputType.number,
                //keyboardType: TextInputType.emailAddress,
                //obscureText: true,
                //decoration: InputDecoration(
                //border: OutlineInputBorder(),
                //hintText: "Username",
                //labelText: "Username",
                //labelStyle: TextStyle(),
                //prefix: Text("Username : "),
                //suffix: Text("Suffix : "),
                //prefixIcon: Icon(Icons.people),
                //suffixIcon: Icon(Icons.lock)
                //),
                // ),
                TextField(
                  controller: namaDepan,
                  onChanged: (value) {
                    setState(() {
                      namaDepan.text;
                    });
                  },
                  decoration: InputDecoration(hintText: "Nama Depan"),
                ),
                TextField(
                  controller: namaBelakang,
                  onChanged: (value) {
                    setState(() {
                      namaBelakang.text;
                    });
                  },
                  decoration: InputDecoration(hintText: "Nama Belakang"),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("${namaDepan.text} ${namaBelakang.text}")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
