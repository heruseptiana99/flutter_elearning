import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String textfromController;
  final String textfromTextField;
  final String textfromTextField2;
  const SecondPage({
    Key? key, required this.textfromController, required this.textfromTextField, required this.textfromTextField2
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Beranda")),
      body: Container(
       padding: const EdgeInsets.fromLTRB(50, 0, 50, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text("SELAMAT DATANG ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            // Text(),
            Text("$textfromTextField,", style: const TextStyle(fontSize: 17),),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text("----------Foto Pre Wedding atau foto sebelum pernikahan biasa dilakukan oleh pasangan yang akan melakukan pernikahan. Foto Pre Wedding digunakan untuk kebutuhan visual undangan pernikahan, display foto pada saat pesta pernikahan, visual souvenir pernikahan, dsb", textAlign: TextAlign.justify, ),
              ),
           Row(
            children: <Widget>[
            MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.blue,
                child: const Text(
                  "Kembali",
                  style: TextStyle(color: Colors.white),
                )),
                const Text(" "),
                MaterialButton(
                onPressed: () {
                  
                },
                color: Colors.green,
                child: const Text(
                  "WhatsApp",
                  style: TextStyle(color: Colors.white),
                )),

            ],
           ),
          ],
        ),
      ),
    );
  }
}
