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
  final List<String> imageList = [
    'assets/image/lion.jpg'
        'assets/image/lemour.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter SVG'),
        ),
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
            ]),
            body: CarouselSlider(
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
            )));
  }
}
