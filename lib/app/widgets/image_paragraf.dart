import 'package:flutter/material.dart';

import '../shared/constant.dart';

class ImageParagraf extends StatelessWidget {
  final double screenWidth;
  final String gambar;
  final String textGambar;
  final String description;

  const ImageParagraf({
    super.key,
    required this.screenWidth,
    required this.gambar,
    required this.textGambar,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/${gambar}.png",
              width: screenWidth / 2.5,
            ),
            Container(
                width: screenWidth / 2.5,
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "${textGambar} ",
                          style: bold.copyWith(fontSize: 8, color: black)),
                      TextSpan(
                        text: "${description}",
                        style: regular.copyWith(color: black, fontSize: 8),
                      ),
                    ]))

                //  Text(
                //   "${description}",
                //   style: regular.copyWith(fontSize: 8),
                //   textAlign: TextAlign.center,
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
