import 'package:app/constants/color_constants.dart';
import 'package:app/widgets/get_started/get_started_widget.dart';
import 'package:flutter/material.dart';


class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorConstants.backgourndcolor,
      body: SafeArea(
        child: Center(
          child:GetStartedWidget(), 
        ),
      ),
    );
  }
}
