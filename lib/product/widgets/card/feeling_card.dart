import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:heroapps_demo/product/extensions/string_extensions.dart';

class FeelingCard extends StatelessWidget {
  const FeelingCard({required this.feelingImages, super.key});
  final List<String> feelingImages;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'How are you feeling today ?',
          style: TextStyle(
            color: Colors.brown.shade700,
            fontSize: 17,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (String path in feelingImages)
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print(path.imageMood);
                      }
                    },
                    borderRadius: BorderRadius.circular(50),
                    child: Ink(
                      height: 60,
                      width: 60,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade300,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(path.imagePath),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    path.imageMood.capitalize,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
          ],
        )
      ],
    );
  }
}
