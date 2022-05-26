import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hk_meditaiton/Widgets/clip_structure.dart';
import 'package:hk_meditaiton/constant.dart';

class SliderCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String length;
  final String imageSrc;

  const SliderCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.length, required this.imageSrc,
    //required this.image_name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: 220,
        height: 98,
        decoration: BoxDecoration(color: Colors.white, border: Border.all(color: kBorderColour), borderRadius: BorderRadius.circular(7)),
        child: ClipStructure(title: title, subtitle: subtitle, length: length, imageSrc: imageSrc)
      ),
    );
  }
}
