import 'package:flutter/material.dart';
import 'package:news_app_ui/homepage/news2.dart';
import 'package:news_app_ui/homepage/news3.dart';
import 'package:news_app_ui/homepage/news4.dart';
import 'package:news_app_ui/style.dart';

class BodyContent extends StatelessWidget {
  // const BodyContent({Key? key}) : super(key: key);

  @override
  String Tagline1 =
      "People raise hue and cry over price hike in petroleum products";

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'World',
            style: headlineTag,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            Tagline1,
            style: headlineTagBody,
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1.0,
            height: 5,
            color: Colors.green,
          ),
          const SizedBox(
            height: 20,
          ),
          // News Headline Tag 2
          const NewsTwo(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1.0,
            height: 5,
            color: Colors.green,
          ),
          const SizedBox(
            height: 20,
          ),
          // News Headline Tag 3
          const NewsThree(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1.0,
            height: 5,
            color: Colors.green,
          ),
          const SizedBox(
            height: 20,
          ),
          // News Headline Tag 4
          const NewsFour(),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1.0,
            height: 5,
            color: Colors.green,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
