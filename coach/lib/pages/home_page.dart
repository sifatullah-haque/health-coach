import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            radius: 50.0,
            backgroundColor: Colors.amber,
          ),
        ),
        body: Column(
          children: [],
        ));
  }
}
