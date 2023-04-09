import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
        child: Column(
          children: const [
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              title: Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26.0),
              ),
              subtitle: Text(
                'April 2, 2023',
                style: TextStyle(fontSize: 16.0),
              ),
              trailing: CircleAvatar(
                maxRadius: 25.0,
                child: Icon(Icons.person),
              ),
            )
          ],
        ),
      ),
    );
  }
}
