// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_app_ui/style.dart';
import 'package:url_launcher/url_launcher.dart';

const _postTwoSource =
    "https://dailytimes.com.pk/830242/sheikh-hasina-warns-india-to-avoid-anti-muslim-violence/";

String Tagline1 = "Sheikh Hasina warns India to avoid anti-muslim violence";

String Post1 = '''
DHAKA: On Saturday, Bangladesh Prime Minister Sheikh Hasina has cautioned New Delhi that any biased 
step towards Muslims could influence the Hindu community in her country. ''';

String para2 =
    ''' She maintained this amidst daily incidents of hatred against the Muslims in India 
and the Narendra Modi government’s discriminatory attitude towards minorities, following the 
revocation of Article 370 and passage of the Citizenship (Amendment) Act.''';

class PostTwo extends StatelessWidget {
  const PostTwo({Key? key}) : super(key: key);

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
              image: AssetImage('assets/images/news3.jpg'),
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
  await canLaunch(_postTwoSource)
      ? await launch(_postTwoSource)
      : throw "Could Not Launch $_postTwoSource";
}
