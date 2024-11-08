import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  final List<String> imgList;

  const CustomCarousel({super.key, required this.imgList});

  @override
  _CustomCarouselState createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          const SizedBox(height: 18),
          CarouselSlider.builder(
            itemCount: widget.imgList.length,
            itemBuilder: (context, index, realIndex) {
              bool isCenterItem = index == _currentIndex;
              return AnimatedContainer(
                duration: const Duration(microseconds: 8),
                // margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: isCenterItem ? Colors.red : Colors.amber,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    widget.imgList[index],
                    fit: BoxFit.cover,
                    width: 1000,
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: 174,
              aspectRatio: 16 / 9,
              // viewportFraction: 0.7,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(height: 20),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.imgList.asMap().entries.map((entry) {
                  print('entry $entry');
                  return GestureDetector(
                    onTap: () => setState(() {
                      _currentIndex = entry.key;
                      print('$_currentIndex');
                    }),
                    child: Container(
                      width: _currentIndex == entry.key ? 24.0 : 12.0,
                      height: 4.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 2),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: _currentIndex == entry.key
                              ? const Color.fromRGBO(43, 57, 185, 1)
                              : const Color.fromRGBO(0, 0, 0, 0.21),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  );
                }).toList()),
          )
        ],
      ),
    );
  }
}
