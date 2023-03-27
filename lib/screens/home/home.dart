import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  const Home({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
      ),
    );
  }
}