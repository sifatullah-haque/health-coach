import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This will be our \n HomePage",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
