import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button.blue({
    required this.onTap,
    required this.label,
  }) {
    bgColor = Colors.blue;
    textColor = Colors.black;
  }

  Button.grey({
    required this.onTap,
    required this.label,
  }) {
    bgColor = Colors.grey;
    textColor = Colors.black;
  }

  Button.orange({
    required this.onTap,
    required this.label,
  }) {
    bgColor = Colors.deepOrange;
  }

  Button.red({
    required this.onTap,
    required this.label,
  }) {
    bgColor = Colors.red;
  }

  final void Function() onTap;
  Color? bgColor;
  final String label;
  Color textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          // width: 50,
          // height: 50,
          color: bgColor,
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
