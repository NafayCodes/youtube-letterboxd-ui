import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  final int star0;
  final int star1;
  final int star2;
  final int star3;
  final int star4;
  final int star5;
  final int totalReviews;
  const Stats({
    super.key,
    required this.star0,
    required this.star1,
    required this.star2,
    required this.star3,
    required this.star4,
    required this.star5,
    required this.totalReviews,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
              right: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
            ),
            color: Colors.white.withValues(alpha: 0.5),
          ),
          width: 10,
          height: (star0 / totalReviews) * 100,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
              right: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
            ),
            color: Colors.white.withValues(alpha: 0.5),
          ),
          width: 10,
          height: (star1 / totalReviews) * 100,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
              right: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
            ),
            color: Colors.white.withValues(alpha: 0.5),
          ),
          width: 10,
          height: (star2 / totalReviews) * 100,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
              right: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
            ),
            color: Colors.white.withValues(alpha: 0.5),
          ),
          width: 10,
          height: (star3 / totalReviews) * 100,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
              right: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
            ),
            color: Colors.white.withValues(alpha: 0.5),
          ),
          width: 10,
          height: (star4 / totalReviews) * 100,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
              right: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 0.4,
              ),
            ),
            color: Colors.white.withValues(alpha: 0.5),
          ),
          width: 10,
          height: (star5 / totalReviews) * 100,
        ),
      ],
    );
  }
}
