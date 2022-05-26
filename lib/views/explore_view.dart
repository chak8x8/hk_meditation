import 'package:flutter/material.dart';
import 'package:hk_meditaiton/views/login_view.dart';

class ExploreView extends StatefulWidget {
  @override
  _ExploreViewState createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(),
                IconButton(onPressed: (){}, icon: Icon(Icons.search),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

