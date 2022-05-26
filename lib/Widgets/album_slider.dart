import 'package:flutter/material.dart';
import 'package:hk_meditaiton/constant.dart';

class album_slider extends StatelessWidget {
  final String imageSrc;
  final String title;
  final String narrator;

  const album_slider({
    Key? key, required this.imageSrc, required this.title, required this.narrator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageSrc, width: 150, height: 150,),
          SizedBox(height: 15,),
          Text(title, style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 16,),),
          SizedBox(height: 3,),
          Text(narrator, style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 13, color: kPrimarySubtitleColour),),
        ],
      ),
    );
  }
}