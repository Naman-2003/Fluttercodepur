import 'package:codepur/home_page.dart';
import 'package:codepur/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.purple)),
      debugShowCheckedModeBanner: false,
      // initialRoute: "/home",
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
      },
    );
  }
}
