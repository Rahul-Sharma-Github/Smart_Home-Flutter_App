import 'package:flutter/material.dart';
import 'package:practice/widget_ui/bottom_navigation_bar.dart';
import 'package:vertical_percent_indicator/vertical_percent_indicator.dart';

class TempPage extends StatefulWidget {
  const TempPage({super.key});

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Temperature',
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Control the Temperature'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0.0, 35, 0.0, 0.0),
                              child: Text(
                                '35° C',
                                style: TextStyle(
                                    fontSize: 45.0,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.grey[800]),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.sunny),
                              Text('  43° C  Outside'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 110.0,
                                width: 110.0,
                                decoration: BoxDecoration(
                                  color: Colors.green[400],
                                  borderRadius: BorderRadius.circular(60.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.battery_charging_full_rounded,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                    Text(
                                      'Power On',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 110.0,
                                width: 110.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(60.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.sunny_snowing,
                                      color: Colors.black,
                                      size: 35.0,
                                    ),
                                    Text('Cooling Mode'),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 110.0,
                                width: 110.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(60.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.timer_outlined,
                                      color: Colors.black,
                                      size: 35.0,
                                    ),
                                    Text('Set Timer'),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 110.0,
                                width: 110.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(60.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.electric_bolt_outlined,
                                      color: Colors.black,
                                      size: 35.0,
                                    ),
                                    Text('Turbo Mode'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                          child: VerticalBarIndicator(
                            header: 'Extreme',
                            footer: 'Low',
                            percent: 0.35,
                            animationDuration: Duration(seconds: 1),
                            height: 590.0,
                            width: 50.0,
                            color: [Colors.pink, Colors.pinkAccent],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
