import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:splash_screen/provider/theme_provider.dart';
import 'package:splash_screen/router/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HOME',
                  style: TextStyle(
                    fontSize: 50,
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                  ),
                ),
                Switch(
                  activeColor: Colors.white,
                  value: themeProvider.isDarkMode,
                  onChanged: (value) {
                    themeProvider.toggleTheme();
                  },
                ),
                MaterialButton(
                  onPressed: () {
                    context.push(AppScreen.chart);
                  },
                  child: Text(
                    'CHART',
                    style: TextStyle(
                      fontSize: 30,
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'hello',
                    style: TextStyle(
                      fontSize: 30,
                      color: themeProvider.bothTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
