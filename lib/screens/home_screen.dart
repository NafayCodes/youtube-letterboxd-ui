import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/svgs/sidebar-icon.svg"),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  height: 44,
                  width: 44,
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                text: "Hello, ",
                style: Theme.of(context).textTheme.headlineSmall,
                children: [
                  TextSpan(
                    text: "Kyran",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 18,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: "!",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
            Text(
              "Review or track film you've watched...",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
            SizedBox(height: 20),

            // POPULAR VIDEOS
            Text(
              "Popular Videos This Month",
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Row(
              children: List.generate(
                5,
                (int count) => Container(
                  margin: EdgeInsets.only(
                    right: count == 4 ? 0 : 10,
                    left: count == 0 ? 0 : 10,
                    top: 18,
                    bottom: 27,
                  ),
                  height: 82,
                  width: 58,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),

            // POPULAR LISTS
            Text(
              "Popular Lists This Month",
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 0 : 30,
                      top: 18,
                      bottom: 27,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 90,
                          height: 82,
                          child: Stack(
                            children: List.generate(4, (int count) {
                              return Positioned(
                                right: count * 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.primaries[count],
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  height: 82,
                                  width: 58,
                                ),
                              );
                            }),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: SizedBox(
                            width: 90,
                            child: Text(
                              "Life-Changing Movies",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontFamily: "OpenSans",
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.secondary,
                                ),
                              ),
                              Text(
                                "Alejandro",
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.secondary,
                                  fontFamily: "OpenSans",
                                  fontSize: 6,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 6,
                                  ),
                                  Text(
                                    "500",
                                    style: TextStyle(
                                      fontFamily: "OpenSans",
                                      fontSize: 4,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withValues(
                                        alpha: 0.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.mode_comment_outlined,
                                    weight: 0.3,
                                    color: Colors.white,
                                    size: 4,
                                  ),
                                  Text(
                                    "79",
                                    style: TextStyle(
                                      fontFamily: "OpenSans",
                                      fontSize: 4,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withValues(
                                        alpha: 0.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),

            // RECENT FRIENDS' REVIEWS
            Text(
              "Recent Friends' Review",
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 18),
            Column(
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                    color: Theme.of(
                      context,
                    ).colorScheme.secondary.withValues(alpha: 0.05),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "Movie Name ",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: "OpenSans",
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                children: [
                                  TextSpan(
                                    text: "2019",
                                    style: TextStyle(
                                      color: Colors.white.withValues(
                                        alpha: 0.5,
                                      ),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "OpenSans",
                                      fontSize: 6,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Review by ",
                                    style: TextStyle(
                                      color: Colors.white.withValues(
                                        alpha: 0.5,
                                      ),
                                      fontFamily: "OpenSans",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 7,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Adrian",
                                        style: TextStyle(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.secondary,
                                          fontFamily: "OpenSans",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 7,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
                                Icon(
                                  Icons.mode_comment_outlined,
                                  color: Colors.white,
                                  weight: 0.5,
                                  size: 5,
                                ),
                                Text(
                                  "8",
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
                              "working stiffs.\n\nnot sure i've ever mentioned this before but i have a very personal fear of not... feeling... correctly. like enormously important things are happening around you in a matter-of-fact, dissociative way that you can understand the significance of but you can't shake..",
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
                      SizedBox(width: 10),
                      Container(
                        width: 57,
                        height: 93,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
