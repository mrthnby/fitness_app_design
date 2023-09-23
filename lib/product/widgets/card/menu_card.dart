import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatefulWidget {
  const MenuCard({required this.title, required this.children, super.key});
  final String title;
  final List<Widget> children;

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'See more',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 17,
                  )
                ],
              ),
            )
          ],
        ),
        CarouselSlider(
          items: widget.children,
          options: CarouselOptions(
            scrollPhysics: const BouncingScrollPhysics(),
            viewportFraction: 1,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        widget.children.length > 1
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.children.map((image) {
                  int index = widget.children.indexOf(image);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? Colors.grey.shade700
                          : Colors.grey,
                    ),
                  );
                }).toList(),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
