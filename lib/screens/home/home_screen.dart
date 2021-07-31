import 'package:flutter/material.dart';
import 'package:x_news/screens/home/widgets/bottom_menu.dart';
import 'package:x_news/screens/home/widgets/menu_button.dart';
import 'package:x_news/screens/home/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 48),
              MenuButton(onTap: () {}),
              PageTitle("Daily News"),
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

