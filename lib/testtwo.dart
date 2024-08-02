import 'package:asroo_store/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class TestTwo extends StatelessWidget {
  const TestTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text('Test Two'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'This is Test Two',
              style: TextStyle(fontSize: 20, color: context.color.mainColor),
            ),
          ),
         
        ],
      ),
    );
  }
}
