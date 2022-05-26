import 'package:flutter/material.dart';
import 'package:hk_meditaiton/Widgets/bottom_nav_item.dart';
import 'package:hk_meditaiton/views/explore_view.dart';

class BottomNavBar extends StatelessWidget {


  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      //padding: EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(svgSrc: 'assets/icons/today_navi.svg', title: 'Today', isActive: true, press: (){},),
          BottomNavItem(svgSrc: 'assets/icons/explore_navi.svg', title: 'Explore',
            press: (){
            // Navigator.push(
            // context,
            // MaterialPageRoute(
            //   builder: (context){
            //     return ExploreView();
            //     },
            //   ),
            // );
            },
          ),
          BottomNavItem(svgSrc: 'assets/icons/library_navi.svg', title: 'Library', press: (){},),
          BottomNavItem(svgSrc: 'assets/icons/profile_navi.svg', title: 'Profile', press: (){},),
        ],
      ),
    );
  }
}
