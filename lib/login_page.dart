import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/images/login.avif',
          fit: BoxFit.cover,
          width: 200,
          height: 150,
        ),
        const SizedBox(height: 20),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Enter your name', labelText: "Name"),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your password',
              labelText: "Password",
            ),
            obscureText: true,
          ),
        ),
        ElevatedButton(
          onPressed: () => print('Hii Codepur'),
          child: const Text('Login'),
          style: ElevatedButton.styleFrom(),
        )
      ],
    ));
  }
}
