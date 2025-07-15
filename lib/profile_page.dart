import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26, right: 26),
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
            Text(
              "David  Silbia",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Color(0xFF120D26),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "350",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF120D26),
                      ),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF747688),
                      ),
                    ),
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
                    Text(
                      "350",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF120D26),
                      ),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF747688),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  rasm: 'assets/Group18531.svg',
                  soz: "Follow",
                  isSelected: true,
                ),
                Button(rasm: 'assets/Group8535.svg', soz: "Massages"),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5669FF),
                      ),
                    ),
                    Text(
                      "Event",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF747688),
                      ),
                    ),
                    Text(
                      "Reviws",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF747688),
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    text:
                        "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase.",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16),
                    children: [TextSpan(text: "Read More",style: TextStyle(color:Color(0xFF5669FF),fontSize: 16,fontWeight: FontWeight.w400 ))],
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
    this.isSelected = false,
  });

  final String rasm;
  final String soz;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton(
        onPressed: () {},

        style: OutlinedButton.styleFrom(
          backgroundColor: isSelected ? const Color(0xFF5669FF) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          spacing: 14,
          children: [
            SvgPicture.asset(
              rasm,
              colorFilter: ColorFilter.mode(
                isSelected ? Colors.white : Color(0xFF5669FF),
                BlendMode.srcIn,
              ),
            ),

            Text(
              soz,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: isSelected ? Color(0xFFFFFFFF) : Color(0xFF5669FF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
