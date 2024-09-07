import 'package:codepur/utils/my_routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changedButton = false;
  final _formKey = GlobalKey<FormState>();

  Future<void> moveToHome() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changedButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      if (mounted) {
        await Navigator.pushNamed(context, MyRoutes.homeRoute);
        if (mounted) {
          setState(() {
            changedButton = false;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(height: 5),
            Image.asset(
              'assets/images/hey.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 40),
            Text(
              name.isEmpty ? 'Welcome' : 'Welcome $name',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                  labelText: "Name",
                ),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Username can not be empty';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
                  labelText: "Password",
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password can not be empty';
                  } else if (value.length < 8) {
                    return 'Password must be at least 8 characters';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: moveToHome,
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 40,
                width: changedButton ? 50 : 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(changedButton ? 25 : 20),
                ),
                child: changedButton
                    ? const Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
