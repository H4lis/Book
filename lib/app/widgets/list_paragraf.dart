import 'package:flutter/material.dart';

import '../shared/constant.dart';

class ParagrafList extends StatelessWidget {
  final List<dynamic> idlist;

  const ParagrafList({required this.idlist, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 4),
      child: Column(
        children: List.generate(
          idlist.length,
          (index) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
                child: Text(
                  "${index + 1}.",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                child: Text(
                  "${idlist[index].textContent}",
                  textAlign: TextAlign.justify,
                  style: regular_paragraf,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
