import 'package:flutter/material.dart';

import '../shared/constant.dart';

class SampulBab extends StatelessWidget {
  final String title;
  final String contentImage;
  final String description;

  const SampulBab({
    super.key,
    required this.title,
    required this.contentImage,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/icons/book_bab.png",
                    width: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "$title",
                    style: semiBold.copyWith(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
              Container(
                width: 240,
                child: Text(
                  "$description",
                  // overflow: TextOverflow.ellipsis,
                  // maxLines: 2,
                  style: regular.copyWith(fontSize: 15, color: Colors.white),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/${contentImage}.png",
                  ),
                  fit: BoxFit.cover)),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 70),
          height: 2,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: purpleBagroundLight),
        ),
      ],
    );
  }
}
