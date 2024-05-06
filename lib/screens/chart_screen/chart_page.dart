import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CHART',
              style: TextStyle(
                fontSize: 50,
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
            MaterialButton(
              onPressed: () {
                context.push('/input');
              },
              child: const Text('이동'),
            ),
          ],
        ),
      ),
    ));
  }
}
