import 'package:app/constants/color_constants.dart';
import 'package:app/constants/size_constanst.dart';
import 'package:flutter/material.dart';

class OtpWidget extends StatefulWidget {
  final String email;
  const OtpWidget({super.key, required this.email});

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());

  final String correctOtp = "1234"; 

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _verifyOtp() {
    String enteredOtp = _controllers.map((c) => c.text).join();

    if (enteredOtp == correctOtp) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("OTP Verified Successfully!")),
      );
      
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid OTP, try again.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "We have sent a verification code to:",
          style: TextStyle(fontSize: 16, color: Colors.grey[800]),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          widget.email,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),

        /// OTP boxes
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
            (index) => Container(
              width: 50,
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 6),
              child: TextField(
                controller: _controllers[index],
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 1,
                decoration: InputDecoration(
                  counterText: "",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: (value) {
                  if (value.isNotEmpty && index < 3) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
            ),
          ),
        ),

        const SizedBox(height: 24),

        /// Verify button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _verifyOtp,
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstants.backgourndbuttoncolor,
              padding: const EdgeInsets.symmetric(vertical: 14),
            ),
            child: const Text(
              "Verify",
              style: TextStyle(
                color: ColorConstants.buttontextcolor,
                fontSize: SizeConstants.mediumText,
              ),
            ),
          ),
        ),

        const SizedBox(height: 16),

        /// Resend
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Didn't receive a code? "),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Resend OTP (but hardcoded 1234)")),
                );
              },
              child: const Text(
                "Resend",
                style: TextStyle(
                  color: ColorConstants.textcolor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
