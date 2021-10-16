// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app_ui/style.dart';
import 'package:url_launcher/url_launcher.dart';

const _postOneSource =
    "https://dailytimes.com.pk/830257/imf-will-validate-data-shared-by-pakistan-shaukat-tarin/";

String Tagline1 =
    "People raise hue and cry over price hike in petroleum products";

String Post1 = '''
On Saturday, Finance Minister Shaukat Tarin Saturday said that the IMF will validate 
data and statistics on power, gas tariffs and tax collection. ''';

class PostOne extends StatelessWidget {
  const PostOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 40, 25, 10),
        child: ListView(
          children: [
            Text(
              Tagline1,
              style: postTitle,
            ),
            SizedBox(
              height: 20,
            ),
            const Text('October 16, 2021'),
            const Divider(
              height: 3,
              color: Colors.grey,
              thickness: 2,
            ),
            SizedBox(
              height: 30,
            ),
            const Image(
              image: AssetImage('assets/images/news2.jpg'),
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              Post1,
              style: headlineTagBody,
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: _launchUrl,
              child: RichText(
                  // ignore: prefer_const_literals_to_create_immutables
                  text: TextSpan(text: 'Source\t',
                      // style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                    TextSpan(
                      text: 'https://dailytimes.com.pk/',
                      style: hyperlinkText,
                    )
                  ])),
            )
          ],
        ),
      ),
    );
  }
}

void _launchUrl() async {
  await canLaunch(_postOneSource)
      ? await launch(_postOneSource)
      : throw "Could Not Launch $_postOneSource";
}
