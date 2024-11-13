import 'package:flutter/material.dart';
import 'package:macedon/static/color.dart';

class AmenityCard extends StatelessWidget {
  final String title;
  final String icon;

  const AmenityCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
        color: Colo.white,
        child: Column(
          children: [
            Image.network(height: 50, icon),
            SizedBox(height: 5),
            Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      ),
    );
  }
}
