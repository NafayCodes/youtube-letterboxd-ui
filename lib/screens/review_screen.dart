import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:youtube_letterboxd_ui/widgets/video_date_picker.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_rounded,
            size: 20,
            color: Colors.white,
            weight: 1.4,
          ),
        ),
        title: Text(
          "Write Your Review",
          style: TextStyle(
            fontFamily: "OpenSans",
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 45),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "The Batman ",
                              style: TextStyle(
                                fontFamily: "OpenSans",
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: "2022",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Specify the date you watched it",
                                style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 6),
                              VideoDatePicker(),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Give your rating",
                                style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 6),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RatingBar.builder(
                                    glow: false,
                                    initialRating: 1,
                                    minRating: 1,
                                    allowHalfRating: true,
                                    itemSize: 25,
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star_rate_rounded,
                                      color: Color(0xFFEC2626),
                                    ),
                                    onRatingUpdate: (rating) {
                                      debugPrint(rating.toString());
                                    },
                                  ),
                                  Icon(
                                    Icons.favorite_rounded,
                                    color: Color(0xFF3D3B54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(7),
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/f/ff/The_Batman_%28film%29_poster.jpg",
                      height: 166,
                      width: 116,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: TextField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  textAlignVertical: TextAlignVertical.top,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.5),
                    fontFamily: "OpenSans",
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    hintText: "Write down your review...",
                    hintStyle: TextStyle(
                      fontFamily: "OpenSans",
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withValues(alpha: 0.5),
                    ),
                    filled: true,
                    fillColor: Color(0xFF3D3B54),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 9),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Publish",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontFamily: "OpenSans",
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
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
