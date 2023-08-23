import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final title;
  final color;
  CourseCard({this.title, this.color,});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        color: color,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style:
                      const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
              ]),
        ),
      ),
    );
  }
}
