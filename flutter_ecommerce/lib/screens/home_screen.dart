import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {

  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'E-Commerce',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Text('Hello'),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: const Text('Go to login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}