import 'package:flutter/material.dart';
import 'package:news_app_ui/Aritlces_pages/post_two.dart';
import 'package:news_app_ui/style.dart';

class NewsThree extends StatelessWidget {
  const NewsThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String Tagline3 =
        "Sheikh Hasina warns India to avoid anti-muslim violence  ";

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => PostTwo()));
      },
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tech',
                  style: headlineTag,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  Tagline3,
                  style: headlineTagBody,
                ),
              ],
            ),
          ),
          const Image(
            image: AssetImage('assets/images/news3.jpg'),
            width: 80,
            height: 80,
          ),
        ],
      ),
    );
  }
}
