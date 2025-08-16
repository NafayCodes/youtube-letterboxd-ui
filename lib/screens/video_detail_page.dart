import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youtube_letterboxd_ui/widgets/my_button.dart';
import 'package:youtube_letterboxd_ui/widgets/my_review_widget.dart';
import 'package:youtube_letterboxd_ui/widgets/stats.dart';

class VideoDetailPage extends StatelessWidget {
  const VideoDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                ClipPath(
                  clipper: QuarterCircleClipper(),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 116, // SHOULD BE RESPONSIVE
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      7,
                                    ),
                                    child: Image.network(
                                      "https://upload.wikimedia.org/wikipedia/en/f/ff/The_Batman_%28film%29_poster.jpg",
                                      height: 166,
                                      fit: BoxFit.cover,
                                      loadingBuilder:
                                          (context, child, loadingProgress) {
                                            if (loadingProgress == null) {
                                              return child;
                                            }
                                            return const CircularProgressIndicator();
                                          },
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                            return const Icon(Icons.error);
                                          },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 7,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/svgs/watched.svg",
                                              height: 10,
                                              width: 17,
                                            ),
                                            Text(
                                              "40k",
                                              style: TextStyle(
                                                fontFamily: "OpenSans",
                                                fontSize: 7,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white.withValues(
                                                  alpha: 0.5,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 11,
                                            ),
                                            Text(
                                              "30k",
                                              style: TextStyle(
                                                fontFamily: "OpenSans",
                                                fontSize: 7,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white.withValues(
                                                  alpha: 0.5,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/svgs/listed.svg",
                                              height: 10,
                                              width: 12,
                                            ),
                                            Text(
                                              "12k",
                                              style: TextStyle(
                                                fontFamily: "OpenSans",
                                                fontSize: 7,
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
                                  Column(
                                    children: List.generate(
                                      3,
                                      (index) => MyButton(
                                        text: "Rate or Review",
                                        icon: Icons.my_library_add_outlined,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    textBaseline: TextBaseline.alphabetic,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: "The Batman ",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: "OpenSans",
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "2022",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: "OpenSans",
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "176 mins",
                                        style: TextStyle(
                                          fontFamily: "OpenSans",
                                          fontSize: 7,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Directed by ",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Matt Reeves",
                                          style: TextStyle(
                                            fontFamily: "OpenSans",
                                            fontSize: 8,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 11,
                                    ),
                                    child: Text(
                                      "UNMASK THE TRUTH.\n\nIn his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.",
                                      style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontSize: 7,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                      maxLines: 6,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                  Text(
                                    "Ratings",
                                    style: TextStyle(
                                      fontFamily: "OpenSans",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withValues(
                                        alpha: 0.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 11),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.star_rate_rounded,
                                        color: Colors.red,
                                        size: 8,
                                      ),
                                      Stats(
                                        star0: 10,
                                        star1: 10,
                                        star2: 20,
                                        star3: 5,
                                        star4: 5,
                                        star5: 10,
                                        totalReviews: 60,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "4.4",
                                            style: TextStyle(
                                              fontFamily: "OpenSans",
                                              fontSize: 30,
                                              fontWeight: FontWeight.w400,
                                              color: Theme.of(
                                                context,
                                              ).colorScheme.secondary,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: List.generate(
                                              5,
                                              (index) => Icon(
                                                Icons.star_rate_rounded,
                                                color: Colors.red,
                                                size: 10,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "All Reviews",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "See All",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 480,
                  child: Column(
                    children: [
                      Divider(
                        thickness: 1,
                        color: Colors.white.withValues(alpha: 0.19),
                      ),
                      Column(
                        children: List.generate(3, (index) {
                          return MyReviewWidget(
                            profilePictureUrl: "",
                            username: "David",
                            review:
                                "It was less than three years ago that Todd Phillips' mid-budget but mega-successful “Joker” threateningly pointed toward a future in which superhero movies of all sizes would become so endemic to modern cinema that they no longer had to be superhero movies at all. With Matt Reeves’ “The Batman” — a sprawling, 176-minute latex procedural that often appears to have more in common with serial killer sagas like “Se7en” and “Zodiac” than it does anything in the Snyderverse or the MCU — that future has arrived with shuddering force, for better or worse. Mostly better. ",
                            rating: 4,
                            comments: 3,
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Icon(Icons.arrow_back_rounded, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class QuarterCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    // path.lineTo(size.width, size.height);
    path.arcToPoint(
      Offset(size.width + 80, 0),
      radius: Radius.circular(size.width * 1.7),
      clockwise: false,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
