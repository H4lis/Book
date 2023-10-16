import 'package:flutter/material.dart';

import '../shared/constant.dart';

class Tadabbur extends StatelessWidget {
  final List<dynamic> idlist;

  const Tadabbur({required this.idlist, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.42,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: black,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/${idlist[0].imageA}.png",
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${idlist[0].title}",
                    style:
                        regular_paragraf.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${idlist[0].content}",
                    textAlign: TextAlign.center,
                    style: regular_paragraf,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.42,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: black,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/${idlist[1].imageA}.png",
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${idlist[1].title}",
                    style:
                        regular_paragraf.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${idlist[1].content}",
                    textAlign: TextAlign.center,
                    style: regular_paragraf,
                  ),
                ],
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.42,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: black,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/${idlist[2].imageA}.png",
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${idlist[2].title}",
                    style:
                        regular_paragraf.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${idlist[2].content}",
                    textAlign: TextAlign.center,
                    style: regular_paragraf,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.42,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: black,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/${idlist[3].imageA}.png",
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${idlist[3].title}",
                    style:
                        regular_paragraf.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${idlist[3].content}",
                    textAlign: TextAlign.center,
                    style: regular_paragraf,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
