import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Welcome',style: TextStyle(fontSize: 15),),
      ),
      body: const Center(child:  Text('this\'s Home Page')),
    );
  }
}