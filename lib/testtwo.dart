import 'package:flutter/material.dart';

class TestTwo extends StatelessWidget {
  const TestTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Two'),
      ),
      body: const Center(
        child: Text('This is Test Two'),
      ),
    );
  }
}
