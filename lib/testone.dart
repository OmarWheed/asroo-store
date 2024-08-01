import 'package:asroo_store/core/extension/context_extension.dart';
import 'package:asroo_store/core/language/lang_keys.dart';
import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class TestOne extends StatelessWidget {
  const TestOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test One'),
      ),
      body: Center(
        child: Column(
          children: [
            Text((LangKeys.appName).tr(context)),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(routeName: AppRoutes.testTwo);
              },
              child: const Text(
                'Go to Test Two',
              ),
            )
          ],
        ),
      ),
    );
  }
}
