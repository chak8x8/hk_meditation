import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hk_meditaiton/constant.dart';

class ClipStructure extends StatelessWidget {
  final String title;
  final String subtitle;
  final String length;
  final String imageSrc;
  final bool isDark;

  const ClipStructure({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.length, required this.imageSrc, this.isDark = false,
    //required this.image_name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 15.0),
              child: Image.asset(imageSrc, height: 74, width: 71,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 15,),
                ),
                Text(subtitle,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 12, color: isDark? Colors.white : kPrimarySubtitleColour),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SvgPicture.asset('assets/icons/volume.svg', color: kPrimaryButtonColour,),
                    ),
                    Text(length,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 10, color: isDark? Colors.white : kPrimarySubtitleColour),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
