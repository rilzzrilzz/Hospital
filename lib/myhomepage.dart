
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Pembuatan Variabel Yang Akan Dipakai
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hospital"),
        backgroundColor: Color.fromARGB(255, 9, 235, 235),
      ),

      backgroundColor: Color.fromARGB(245, 243, 247, 247),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                 child: Image(
                  image: AssetImage("assets/klinik remove.png"),
                  width: 200,
                  height: 200,
                 ),
               ),
            Container(
              width: 300,
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  fillColor: Colors.orange,
                  hintText: 'Masukan Nama Kamu',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                ),
                controller: inputNama,
                onFieldSubmitted: (values) {
                  inputNama.text = values;
                },
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16),
            ),

            ElevatedButton(
              child: Text("Tampilkan Nama"),
              onPressed: () {
                print(inputNama.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
