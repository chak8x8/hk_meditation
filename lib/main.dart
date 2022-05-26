import 'package:flutter/material.dart';
import 'package:hk_meditaiton/constant.dart';
import 'package:hk_meditaiton/views/welcome_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryButtonColour,
      ),
      home: HomeView(),
    );
  }
  
  
}

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return WelcomeView();
  }
}
