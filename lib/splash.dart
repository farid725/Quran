import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/f.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
    );
  }
}
