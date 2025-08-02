import 'package:flutter/material.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                "assets/images/boarding.png",
                width: double.maxFinite,
                height: 450,
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/images/Logo.png",
                width: double.maxFinite,
                height: 90,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              "“Track films you've watched. Save those you want to see. Tell your friends what's good.”",
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "Get Started",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  fontFamily: "OpenSans"),
            ),
          )
        ],
      ),
    );
  }
}
