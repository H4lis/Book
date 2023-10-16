import 'package:flutter/material.dart';

import '../shared/constant.dart';

class BagroundOrangeKataKunci extends StatelessWidget {
  final List<dynamic> idlist;
  BagroundOrangeKataKunci({required this.idlist, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: bagroundDarkOrange, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 3,
                        width: 3,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: black),
                      ),
                    ],
                  ),
                  Text(
                    "  ${idlist[0].textContent}",
                    style: regular_paragraf,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 3,
                        width: 3,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: black),
                      ),
                    ],
                  ),
                  Text(
                    "  ${idlist[1].textContent}",
                    style: regular_paragraf,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 3,
                    width: 3,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: black),
                  ),
                  Text(
                    "  ${idlist[2].textContent}",
                    style: regular_paragraf,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 3,
                    width: 3,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: black),
                  ),
                  Text(
                    "  ${idlist[3].textContent}",
                    style: regular_paragraf,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 3,
                    width: 3,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: black),
                  ),
                  Text(
                    "  ${idlist[4].textContent}",
                    style: regular_paragraf,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 3,
                        width: 3,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: black),
                      ),
                    ],
                  ),
                  Text(
                    "  ${idlist[5].textContent}",
                    style: regular_paragraf,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 3,
                        width: 3,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: black),
                      ),
                    ],
                  ),
                  Text(
                    "  ${idlist[6].textContent}",
                    style: regular_paragraf,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 3,
                    width: 3,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: black),
                  ),
                  Text(
                    "  ${idlist[7].textContent}",
                    style: regular_paragraf,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 3,
                    width: 3,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: black),
                  ),
                  Text(
                    "  ${idlist[8].textContent}",
                    style: regular_paragraf,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
