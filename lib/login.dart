import 'package:flutter/material.dart';
import 'package:hospital/myhomepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void login() {
    if (username.text.isNotEmpty && password.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Username dan password harus diisi!"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Color.fromRGBO(50, 145, 145, 1),
      ),

      backgroundColor: Color.fromRGBO(245, 19, 124, 1),

      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              // Username
              TextField(
                controller: username,
                decoration: InputDecoration(
                  labelText: "Username",
                  filled: true,
                  fillColor: Colors.orange,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Password
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  filled: true,
                  fillColor: Colors.orange,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: login,
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}