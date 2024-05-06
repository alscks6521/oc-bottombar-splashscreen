import 'package:flutter/material.dart';

class IndexsScreen extends StatelessWidget {
  const IndexsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Column(
            children: [
              const Text(
                'INDEXS',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 1200,
                color: Colors.red,
              )
            ],
          ),
        )),
      ),
    );
  }
}
