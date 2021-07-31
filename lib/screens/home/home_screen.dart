import 'package:flutter/material.dart';
import 'package:x_news/screens/home/widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 48),
              
              Expanded(
                child: Container(),
              ),
              BottomMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
