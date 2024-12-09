import 'package:flutter/material.dart';
import 'homescreen.dart';
// import 'question_3.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Username TextField
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Omanyi Brenda', // Your full name as a placeholder
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            // Password TextField
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            // Login Button
            ElevatedButton(
              onPressed: () {
                // Navigate to HomeScreen when pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
