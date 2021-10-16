import 'package:flutter/material.dart';
import 'package:news_app_ui/homepage/home_slider.dart';
import 'body_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.cover,
                    width: 200,
                    height: 50,
                  ),
                  IconButton(
                      onPressed: () {
                        print('search bar click');
                      },
                      icon: Icon(Icons.search_outlined))
                ],
              ),
              HomeSlider(),
              BodyContent(),
            ],
          ),
        ),
      ),
    );
  }
}
