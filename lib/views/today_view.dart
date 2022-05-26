import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hk_meditaiton/Widgets/album_slider.dart';
import 'package:hk_meditaiton/Widgets/bottom_nav_bar.dart';
import 'package:hk_meditaiton/Widgets/clip_structure.dart';
import 'package:hk_meditaiton/Widgets/slider_card.dart';
import 'package:hk_meditaiton/constant.dart';

class TodayView extends StatefulWidget {

  @override
  State<TodayView> createState() => _TodayViewState();
}

class _TodayViewState extends State<TodayView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              //height: 840,
              margin: EdgeInsets.symmetric(vertical: 20),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('👋', style: TextStyle(fontSize: 27),),
                        Text('Hello Alex', style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold, fontSize: 23),),
                        Text('Hope you get a Good day today', style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 15, color: Color(0xFF979797)),),
                      ],
                    ),
                  ),
                  Divider(height: 2, indent: 28, endIndent: 28),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Today Schedule',
                              style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text('Expert Guidance', style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 13, color: kPrimarySubtitleColour),)
                          ],
                        ),
                        ElevatedButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.play_arrow_rounded),
                          label: Text('Start'),
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.resolveWith<double>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return 0;
                                }
                                return 0;
                              },
                            ),
                            backgroundColor: MaterialStateProperty.all(kPrimaryButtonColour),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(20,),
                        child: Row(
                          children:[
                            SvgPicture.asset("assets/icons/morning.svg"),
                            SizedBox(width: 10,),
                            Text('IN THE MORNING', style: TextStyle(fontSize: 12),),
                          ]
                        ),
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SliderCard(imageSrc: 'assets/pictures/cover2.png', title: 'ABC', subtitle: 'DEF', length: '20 - 30 MIN',
                          //image_name: 'HIJ',
                        ),
                        // Card(
                        //   child: Container(
                        //     width: 200,
                        //     child: ListTile(
                        //       //leading: SvgPicture.asset('assetName'),
                        //       title: Text('ABC'),
                        //       subtitle: Text(''),
                        //
                        //
                        //       ),
                        //   ),
                        //   ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20,),
                    child: Row(
                        children:[
                        SvgPicture.asset("assets/icons/afternoon.svg"),
                          SizedBox(width: 10,),
                          Text('AFTERNOON', style: TextStyle(fontSize: 12),),
                        ]
                    ),
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SliderCard(imageSrc: 'assets/pictures/cover2.png', title: 'ABC', subtitle: 'DEF', length: '20 - 30 MIN',),
                        SliderCard(imageSrc: 'assets/pictures/cover4.png', title: 'ABC', subtitle: 'DEF', length: '20 - 30 MIN',),
                        SliderCard(imageSrc: 'assets/pictures/cover5.png', title: 'ABC', subtitle: 'DEF', length: '20 - 30 MIN',),
                        ],
                    ),
                    ),
                  Padding(
                    padding: EdgeInsets.all(20,),
                    child: Row(
                       children:[
                         SvgPicture.asset("assets/icons/at_night.svg"),
                        SizedBox(width: 10,),
                        Text('AT NIGHT', style: TextStyle(fontSize: 12),),
                        ]
                    ),
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SliderCard(imageSrc: 'assets/pictures/cover2.png', title: 'ABC', subtitle: 'DEF', length: '20 - 30 MIN',
                          //image_name: 'HIJ',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 10,),
            Container(
              width: double.infinity,
              height: 208,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: const EdgeInsets.all(20),
                    child: Text('Pickup where you left',
                      style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold, fontSize: 18,),),
                  ),
                  ClipStructure(title: 'ABC', subtitle: 'DEF', length: '20-30 MIN', imageSrc: 'assets/pictures/cover1.png'),
                  ElevatedButton(
                      onPressed: (){}, style: ElevatedButton.styleFrom(shape: CircleBorder()),child: Icon(Icons.play_arrow_rounded))
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Container(
                  //     height: 100,
                  //     width: size.width * 0.9,
                  //     decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(7)
                  //     ,),
                  //   ),
                  // ),

                ],
            ),
            ),
            Divider(thickness: 10,),
            Container(
              //margin: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(color: Colors.white,),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Mixes Created For You', style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold, fontSize: 16,),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            album_slider(imageSrc: 'assets/pictures/cover1.png', title: 'Calm & Composed', narrator: 'Megan James',),
                            album_slider(imageSrc: 'assets/pictures/cover2.png', title: 'Closed Lake', narrator: 'Megan James',),
                            album_slider(imageSrc: 'assets/pictures/cover3.png', title: 'Calm', narrator: 'Megan James',),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

