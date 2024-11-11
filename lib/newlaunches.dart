import 'package:flutter/material.dart';

class NewLaunches extends StatelessWidget {
  const NewLaunches({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5E8C7),
        title: const Text(
          'New Launches',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF5E8C7),
    );
  }
}
