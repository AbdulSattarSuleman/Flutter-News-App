import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeSlider extends StatelessWidget {
  // const HomeSlider({Key? key}) : super(key: key);

  @override
  List sliderImage = [
    'assets/images/slider1.jpg',
    'assets/images/new1.jpg',
  ];
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: sliderImage.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Image(
          image: AssetImage(sliderImage[itemIndex]),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 1.5,
      ),
    );
  }
}
