import 'package:app/widgets/get_started/get_started_widget.dart';
import 'package:flutter/material.dart';


class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child:GetStartedWidget(), 
        ),
      ),
    );
  }
}
