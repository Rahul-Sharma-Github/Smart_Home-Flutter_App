import 'package:flutter/material.dart';
import 'package:practice/widget_ui/bottom_navigation_bar.dart';
import 'package:practice/widget_ui/homepage_cards.dart';
import 'package:practice/widget_ui/homepage_heading.dart';
import 'package:practice/widget_ui/homepage_temperature.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              HomePageHeading(),
              HomePageCards(),
              HomePageTemperature(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
