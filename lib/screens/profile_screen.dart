import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_letterboxd_ui/widgets/my_review_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: NoStretchScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 39),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 166,
                      width: double.infinity,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    Positioned(
                      bottom: -40,
                      left: 0,
                      right: 0,
                      child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 39,
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.tertiary,
                          ),
                          Positioned(
                            top: 0,
                            right: (MediaQuery.of(context).size.width / 2) - 39,
                            child: CircleAvatar(
                              radius: 9,
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                              child: SvgPicture.asset(
                                "assets/svgs/profile-edit.svg",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Kyran",
                    style: TextStyle(
                      fontFamily: "OpenSans",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Text(
                      "Pro",
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 6,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IntrinsicWidth(
                    child: Column(
                      children: [
                        Text(
                          "500 Followers",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 4,
                            right: 8,
                            left: 8,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          color: Theme.of(context).colorScheme.secondary,
                          height: 1.3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  IntrinsicWidth(
                    child: Column(
                      children: [
                        Text(
                          "420 Followings",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 4,
                            right: 8,
                            left: 8,
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          color: Theme.of(context).colorScheme.secondary,
                          height: 1.3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "455",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        Text(
                          "Total films",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "33",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                        Text(
                          "Film this Year",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "4",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        Text(
                          "Lists",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "30",
                          style: TextStyle(
                            fontFamily: "OpenSans",
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.tertiary,
                          ),
                        ),
                        Text(
                          "Review",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "Kyran's Favorite Films",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              ScrollConfiguration(
                behavior: NoStretchScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(6, (index) {
                      return Container(
                        margin: EdgeInsets.only(
                          top: 16,
                          bottom: 4,
                          left: index == 0 ? 12 : 6,
                          right: index == 5 ? 12 : 6,
                        ),
                        height: 89,
                        width: 67,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Divider(
                  color: Colors.white.withValues(alpha: 0.19),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Kyran's Recent Watched",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w600,
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
              ),
              ScrollConfiguration(
                behavior: NoStretchScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(6, (index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          top: 16,
                          bottom: 16,
                          left: index == 0 ? 20 : 6,
                          right: index == 5 ? 20 : 6,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 89,
                              width: 67,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                            ),
                            Row(
                              children: List.generate(
                                4,
                                (index) => Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.red,
                                  size: 14,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Read Review ",
                                  style: TextStyle(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.tertiary,
                                    fontFamily: "OpenSans",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 6,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Theme.of(context).colorScheme.tertiary,
                                  size: 8,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Kyran's Recent Reviewed",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w600,
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: List.generate(
                  3,
                  (index) => MyReviewWidget(
                    profilePictureUrl: "",
                    movieName: "movieName",
                    releaseYear: "2019",
                    username: "Adrian",
                    review:
                        "working stiffs.\n\nnot sure i've ever mentioned this before but i have a very personal fear of not... feeling... correctly. like enormously important things are happening around you in a matter-of-fact, dissociative way that you can understand the significance of but you can't shake..",
                    rating: 4,
                    comments: 8,
                    thumbnailUrl: "",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoStretchScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
