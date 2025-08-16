import 'package:app/screens/login_page.dart';
import 'package:app/screens/register_page.dart';
import 'package:flutter/material.dart';


class GetStartedWidget extends StatelessWidget {
  const GetStartedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Sign in button
        SizedBox(
          width: 200,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              side: const BorderSide(color: Colors.black, width: 1),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            child: const Text(
              "Sign in",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),

        const SizedBox(height: 16),

        /// Register account button
        SizedBox(
          width: 200,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              side: const BorderSide(color: Colors.black, width: 1),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
                ),
              );
            },
            child: const Text(
              "Register account",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
