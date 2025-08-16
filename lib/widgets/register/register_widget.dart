import 'package:flutter/material.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 24),

          /// Name
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Full Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),

          /// Email
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),

          /// Password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: const Icon(Icons.visibility),
                onPressed: () {}, 
              ),
            ),
          ),
          const SizedBox(height: 16),

          /// Confirm Password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: const Icon(Icons.visibility),
                onPressed: () {}, 
              ),
            ),
          ),
          const SizedBox(height: 24),

          /// Register Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Register'),
            ),
          ),
        ],
      ),
    );
  }
}
