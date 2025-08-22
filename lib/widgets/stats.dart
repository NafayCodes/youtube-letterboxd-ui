import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  final int star1;
  final int star2;
  final int star3;
  final int star4;
  final int star5;
  final int totalReviews;
  const Stats({
    super.key,
    required this.star1,
    required this.star2,
    required this.star3,
    required this.star4,
    required this.star5,
    required this.totalReviews,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RatingBox(rating: star1, totalReviews: totalReviews),
              RatingBox(rating: star2, totalReviews: totalReviews),
              RatingBox(rating: star3, totalReviews: totalReviews),
              RatingBox(rating: star4, totalReviews: totalReviews),
              RatingBox(rating: star5, totalReviews: totalReviews),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 1),
            color: Colors.white.withValues(alpha: 0.5),
            height: 2,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              5,
              (index) => Text(
                "${index + 1}",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.5),
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w400,
                  fontSize: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RatingBox extends StatelessWidget {
  final int rating;
  final int totalReviews;
  const RatingBox({
    super.key,
    required this.rating,
    required this.totalReviews,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      height: (rating / totalReviews) * 100,
    );
  }
}
