import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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

//Задание 1
class _HomeState extends State<Home> {
  final String assetName = ('assets/svg/circle.svg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("SVG"),
      // ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Stack(children: [
          Positioned(
            top: -40,
            left: -40,
            height: 250,
            width: 250,
            child: SvgPicture.asset(assetName,
                semanticsLabel: 'assets/svg/circle.svg'),
          ),
          // SizedBox(
          //   height: 100,
          //   width: 100,
          //   child: SvgPicture.asset(assetName,
          //       semanticsLabel: 'assets/svg/circle.svg'),
          // ),
        ]),
      ),
    );
  }
}

// Задание 2
class Carusel extends StatelessWidget {
  final List<String> imageList = [
    'assets/image/lion.jpg'
        'assets/image/lemour.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Image Carousel Example '),
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
        ),
        items: imageList
            .map(
              (item) => Center(
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
