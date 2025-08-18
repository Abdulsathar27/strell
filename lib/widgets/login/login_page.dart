import 'package:app/constants/color_constants.dart';
import 'package:app/constants/size_constanst.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/register_page.dart';
import 'package:app/screens/otp_page.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // For now we just go to OTP screen without real backend check
    if (email.isNotEmpty && password.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OtpPage(email: email),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter email & password")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 32),

          /// Email
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),

          const SizedBox(height: 16),

          /// Password
          TextFormField(
            controller: passwordController,
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

          const SizedBox(height: 24),

          /// Login Button → goes to OTP Page
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstants.backgourndbuttoncolor,
                padding: const EdgeInsets.symmetric(vertical: 14),
                foregroundColor: ColorConstants.textcolor,
              ) ,
              child: const Text('Login',
              style: TextStyle(
                color: ColorConstants.buttontextcolor,
                fontSize: SizeConstants.mediumText,
              ),
              ),
            ),
          ),

          TextButton(
            style:TextButton.styleFrom(
              foregroundColor: ColorConstants.textcolor,
            ),
            onPressed: () {},
            child: const Text('Forgot password?'),
          ),

          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: ColorConstants.textcolor
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
                ),
              );
            },
            child: const Text("Don’t have an account? Register"),
          ),
        ],
      ),
    );
  }
}
