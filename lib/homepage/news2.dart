import 'package:flutter/material.dart';
import 'package:news_app_ui/Aritlces_pages/post_one.dart';
import 'package:news_app_ui/style.dart';

class NewsTwo extends StatelessWidget {
  const NewsTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String Tagline2 =
        "IMF will validate data shared by Pakistan: Shaukat Tarin";
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (builder) => PostOne()));
      },
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Politics',
                  style: headlineTag,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  Tagline2,
                  style: headlineTagBody,
                ),
              ],
            ),
          ),
          const Image(
            image: AssetImage('assets/images/news2.jpg'),
            width: 80,
            height: 80,
          ),
        ],
      ),
    );
  }
}
