import 'package:day_19_vazifa1/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Day19App());
}

class Day19App extends StatelessWidget {
  Day19App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: SvgPicture.asset(
            "assets/Back.svg",
            width: 44,
            height: 44,
          ),
          actions: [
            SvgPicture.asset(
              "assets/More1.svg",
              height: 22,
              width: 22,
            ),
          ],
        ),
        body: ProfilePage(),
      ),
    );
  }
}
