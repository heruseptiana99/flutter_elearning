import 'package:flutter/material.dart';
import 'package:flutter_passing/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String name = "Heru Septiana";
    TextEditingController textfortosend = TextEditingController();
    TextEditingController textfortosend2 = TextEditingController();
    return MaterialApp(
      initialRoute: '/secondpage',
      routes: {
        '/secondpage': (context) => SecondPage(
            textfromController: name, textfromTextField: textfortosend.text, textfromTextField2: textfortosend2.text),
      },
      home: Scaffold(
        appBar: AppBar(title: const Text("Lelang Barang Antik")),
        body: Builder(
          builder: (context) => Center(
              child: Padding(
            padding: const EdgeInsets.all(110.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text(
                    "LOGIN | MASUK",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: TextField(
                  controller: textfortosend,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(hintText: "Username / Email"),
                ),),
               Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: TextField(
                  controller: textfortosend2,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(hintText: "Password"),
                ),), 
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/secondpage');
                  },
                  color: Colors.blue,
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                  child: const Text(
                    "MASUK",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
