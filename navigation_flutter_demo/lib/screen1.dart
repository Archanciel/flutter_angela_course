import 'package:flutter/material.dart';

import 'screen2.dart';

class Screen1 extends StatelessWidget {
  /// Route one
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),
          child: const Text('Go Forwards To Screen 2'),
          onPressed: () {
            Navigator.pushNamed(context, '/screen2');
          },
        ),
      ),
    );
  }
}
