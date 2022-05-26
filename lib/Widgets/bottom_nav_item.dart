import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hk_meditaiton/constant.dart';

class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive;

  const BottomNavItem({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //Divider(height: 2, color: isActive ? kPrimaryButtonColour : null,),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 2, width: 21,
              decoration: BoxDecoration(color: isActive ? kPrimaryButtonColour : null),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 8),
            child: SvgPicture.asset(svgSrc, height: 19, width: 19,color: isActive ? kPrimaryButtonColour : kInactiveColour),
          ),
          Text(title, style: TextStyle(fontSize:12, color: isActive ? kPrimaryButtonColour : kInactiveColour),),


        ],
      ),
    );
  }
}



