import 'package:flutter/material.dart';

import '../shared/constant.dart';

class BulledList extends StatelessWidget {
  final List<dynamic> idlist;

  const BulledList({required this.idlist, Key? key}) : super(key: key);

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
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 4,
                height: 4,
                decoration: BoxDecoration(color: black, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 17,
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
