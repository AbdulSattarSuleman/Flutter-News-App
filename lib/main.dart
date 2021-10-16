import 'package:flutter/material.dart';
import 'package:news_app_ui/homepage/home_page.dart';

void main() {
  runApp(NewsAppUI());
}

class NewsAppUI extends StatefulWidget {
  const NewsAppUI({Key? key}) : super(key: key);

  @override
  _NewsAppUIState createState() => _NewsAppUIState();
}

class _NewsAppUIState extends State<NewsAppUI> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
