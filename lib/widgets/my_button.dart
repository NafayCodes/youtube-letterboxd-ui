import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  const MyButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      padding: EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.primary, size: 10),
          Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.w600,
              fontSize: 7,
            ),
          ),
        ],
      ),
    );
  }
}
