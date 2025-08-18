import 'package:app/constants/color_constants.dart';
import 'package:app/widgets/register/register_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgourndcolor,
      appBar: AppBar(title: const Text('Register'),
      backgroundColor:ColorConstants.backgourndcolor ,
      ),
      body: const Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: RegisterFormWidget(), 
        ),
      ),
    );
  }
}
