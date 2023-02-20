// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce5/components/color.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class BannerComponents extends StatefulWidget {
  const BannerComponents({super.key});

  @override
  State<BannerComponents> createState() => _BannerComponentsState();
}

class _BannerComponentsState extends State<BannerComponents> {
  @override
  Widget build(BuildContext context) {
    //
    return Stack(
      children: [
        _banner(),
        SizedBox(height: 5),
        _indotor(),
      ],
    );
  }

  int _current = 0;

  _banner() {
    return CarouselSlider(
      options: CarouselOptions(
          height: 140.0,
          autoPlay: true,
          viewportFraction: 1,
          onPageChanged: (index, reson) {
            setState(() {
              _current = index;
            });
          }),
      items: banner
          .map(
            (i) => Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  i,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  _indotor() {
    return Positioned(
      top: 125,
      right: 50,
      left: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: banner.map((e) {
          final index = banner.indexOf(e);
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: primaryColorWhite,
              shape: _current == index ? BoxShape.circle : BoxShape.circle,
            ),
            height: _current == index ? 10 : 5,
            width: 8,
          );
        }).toList(),
      ),
    );
  }
  // _indotor() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: banner.map((url) {
  //       int index = banner.indexOf(url);
  //       return Container(
  //         width: 8,
  //         height: _current == index ? 8 : 5,
  //         margin: EdgeInsets.symmetric(horizontal: 4),
  //         decoration: BoxDecoration(
  //           border: Border.all(color: Colors.grey),
  //           shape: _current == index ? BoxShape.circle : BoxShape.circle,
  //           color: Colors.purple,
  //         ),
  //       );
  //     }).toList(),
  //   );
  // }
}
