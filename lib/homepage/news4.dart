import 'package:flutter/material.dart';
import 'package:news_app_ui/style.dart';

class NewsFour extends StatelessWidget {
  const NewsFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String Tagline4 =
        "Security under spotlight after British MP stabbed to death ";
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Business',
                style: headlineTag,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                Tagline4,
                style: headlineTagBody,
              ),
            ],
          ),
        ),
        const Image(
          image: AssetImage('assets/images/news4.jpg'),
          width: 80,
          height: 80,
        ),
      ],
    );
  }
}
