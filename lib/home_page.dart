import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 20;
    String name = "naman";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hii naman'),
      ),
      body: Center(
        child: Text('HII CODEPUR needed $days with $name'),
      ),
      drawer: const Drawer(),
    );
  }
}
