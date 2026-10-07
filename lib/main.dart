import 'package:flutter/material.dart';
import 'package:hospital/login.dart';
import 'package:hospital/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      //home bisa di komentar atau di hapus
      //home:const Login (),
      routes: {
        //halaman utama awal aplikasi dibuka
        '/': (context) => const LoginPage(),
      //pengenalan rute ke halaman homepage 
      '/home': (context) => const MyHomePage(),
      },
    );
  }
}
