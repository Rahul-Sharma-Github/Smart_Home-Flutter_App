import 'package:flutter/material.dart';

class HomePageHeading extends StatefulWidget {
  const HomePageHeading({super.key});

  @override
  State<HomePageHeading> createState() => _HomePageHeadingState();
}

class _HomePageHeadingState extends State<HomePageHeading> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              title: const Padding(
                padding: EdgeInsets.only(top: 4.0),
                child: Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26.0),
                ),
              ),
              subtitle: const Text(
                'April 2, 2023',
                style: TextStyle(fontSize: 16.0),
              ),
              trailing: CircleAvatar(
                radius: 25.0,
                child: Image.network(
                  'https://www.eclipsegroup.co.uk/wp-content/uploads/2020/03/Round-Profile-Picture-768x768-1.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
