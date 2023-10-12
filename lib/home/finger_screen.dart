import 'package:finger_print/api/api.dart';
import 'package:finger_print/home/home_page.dart';
import 'package:flutter/material.dart';

class FingerScreen extends StatelessWidget {
  const FingerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: const Text(
          'press',
          style: TextStyle(fontSize: 15,
          color: Colors.black
          ),
        ),
        onPressed: () async {
          final auth = await LocalAuth.authenticate();
          if (auth) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          }
        },
      )),
    );
  }
}
