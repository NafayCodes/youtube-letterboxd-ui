import 'package:flutter/material.dart';

// "working stiffs.\n\nnot sure i've ever mentioned this before but i have a very personal fear of not... feeling... correctly. like enormously important things are happening around you in a matter-of-fact, dissociative way that you can understand the significance of but you can't shake.."
class MyReviewWidget extends StatelessWidget {
  final String profilePictureUrl;
  final String movieName;
  final String releaseYear;
  final String username;
  final String review;
  final double rating;
  final int comments;
  final String thumbnailUrl;
  const MyReviewWidget({
    super.key,
    required this.profilePictureUrl,
    required this.movieName,
    required this.releaseYear,
    required this.username,
    required this.review,
    required this.rating,
    required this.comments,
    required this.thumbnailUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12, left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(7),
          bottomLeft: Radius.circular(7),
          bottomRight: Radius.circular(7),
        ),
        color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.05),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              radius: 10,
              backgroundImage: NetworkImage(profilePictureUrl),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "$movieName ",
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: releaseYear,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.5),
                            fontWeight: FontWeight.w600,
                            fontFamily: "OpenSans",
                            fontSize: 6,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Review by ",
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.5),
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600,
                            fontSize: 7,
                          ),
                          children: [
                            TextSpan(
                              text: username,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily: "OpenSans",
                                fontWeight: FontWeight.w600,
                                fontSize: 7,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 2),
                      Row(
                        children: List.generate(
                          4,
                          (index) => Icon(
                            Icons.star_rate_rounded,
                            color: Colors.red,
                            size: 5,
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.mode_comment_outlined,
                        color: Colors.white,
                        weight: 0.5,
                        size: 5,
                      ),
                      Text(
                        comments.toString(),
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.5),
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w600,
                          fontSize: 6,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    review,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.w400,
                      fontSize: 6,
                    ),
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(7),
            child: Image.network(
              thumbnailUrl,
              width: 57,
              height: 93,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const CircularProgressIndicator();
              },
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error);
              },
            ),
          ),
        ],
      ),
    );
  }
}
