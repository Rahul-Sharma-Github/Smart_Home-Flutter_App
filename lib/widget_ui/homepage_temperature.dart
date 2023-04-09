import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';

class HomePageTemperature extends StatefulWidget {
  const HomePageTemperature({super.key});

  @override
  State<HomePageTemperature> createState() => _HomePageTemperatureState();
}

class _HomePageTemperatureState extends State<HomePageTemperature> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 35.0, right: 35.0, top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Expanded(
                                child: Text(
                                  'Temperature',
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: Text(
                                  'Click here to control the temperature',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '20 C',
                            style: TextStyle(
                                fontSize: 32.0, color: Colors.grey[700]),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: LinearPercentIndicator(
                    padding: const EdgeInsets.all(0.0),
                    percent: 0.4,
                    lineHeight: 45.0,
                    barRadius: const Radius.circular(20.0),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
