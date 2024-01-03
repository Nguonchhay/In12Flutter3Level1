import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {

  static const routeName = '/splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.jpg',
              width: 150.0,
              height: 150.0,
            ),
            const Text('E-Commerce'),
          ],
        ),
      ),
    );
  }
}