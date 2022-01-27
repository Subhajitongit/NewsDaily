import 'package:flutter/material.dart';
import 'package:news_app/components/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: const [
            //app bar
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
