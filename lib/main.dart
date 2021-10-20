// Flutter imports://Задание 3
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState get createState => _HomeState();
}

class _HomeState extends State<Home> {
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
          // Домашнее задание 1
          child: Stack(children: [
            Positioned(
              top: -40,
              left: -40,
              height: 200,
              width: 200,
              child: SvgPicture.asset(assetName,
                  semanticsLabel: 'assets/svg/circle.svg'),
            ),
            CarouselSlider(
              //Домашнее задание 2
              options: CarouselOptions(
                autoPlay: true,
              ),
              items: imageList
                  .map(
                    (item) => Center(
                      child: Image.asset(
                        item,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  .toList(),
            )
          ]),
        ));
  }
}
