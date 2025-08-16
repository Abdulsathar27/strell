import 'package:app/constants/color_constants.dart';
import 'package:app/widgets/otp_widgets/otp_widget.dart';
import 'package:flutter/material.dart';


class OtpPage extends StatelessWidget {
  final String email;

  const OtpPage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorConstants.backgourndcolor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: OtpWidget(email: email),
          ),
        ),
      ),
    );
  }
}
