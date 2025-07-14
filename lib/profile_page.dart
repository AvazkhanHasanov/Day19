import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26,right: 26),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/MaskGroup1.png",
              width: 96,
              height: 96,
            ),
            Text("David  Silbia"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("350"),
                    Text("Following"),
                  ],
                ),
                SizedBox(
                  height: 32,
                  child: VerticalDivider(
                    color: Color(0xFFDDDDDD),
                    width: 32,
                  ),
                ),
                Column(
                  children: [
                    Text("350"),
                    Text("Following"),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(rasm: 'assets/Group1.svg', soz: "Follow"),
                Button(rasm: 'assets/Group2.svg', soz: "Massages"),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("About"),
                    Text("Event"),
                    Text("Reviws"),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    text:
                        "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.",style: TextStyle(color: Colors.black),
                    children: [TextSpan(text: "Read More")],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.rasm,
    required this.soz,
  });

  final String rasm;
  final String soz;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 154,
      height: 50,
      child: OutlinedButton(
        onPressed: () {},

        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          spacing: 14,
          children: [
            SvgPicture.asset(rasm),
            Text(soz),
          ],
        ),
      ),
    );
  }
}
