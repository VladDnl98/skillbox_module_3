import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final String assetName = ('assets/svg/circle.svg');
  final List<String> imageList = [
    'assets/image/lion.jpg',
    'assets/image/lemour.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter SVG'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Stack(children: [
          Positioned(
            bottom: -40,
            right: -40,
            height: 250,
            width: 250,
            child: SvgPicture.asset(assetName,
                semanticsLabel: 'assets/svg/circle.svg'),
          ),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
            ),
            items: imageList
                .map(
                  (item) => Center(
                    child: Image.asset(
                      ('assets/image/lion.jpg'),
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                .toList(),
          )
        ]),
      ),
    );
  }
}
