import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heroapps_demo/product/extensions/string_extensions.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard(
      {required this.title,
      required this.content,
      required this.duratiton,
      required this.svg,
      required this.color,
      super.key});
  final String title;
  final String content;
  final String duratiton;
  final String svg;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 180,
        padding: const EdgeInsets.all(24),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color.withOpacity(.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      content,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      textWidthBasis: TextWidthBasis.longestLine,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.play_circle_fill_rounded,
                          color: color,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '$duratiton mins',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: SvgPicture.asset(svg.svgPath),
            ),
          ],
        ),
      ),
    );
  }
}
