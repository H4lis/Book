import 'package:flutter/material.dart';

import '../shared/constant.dart';

class ParagrafListCostum extends StatelessWidget {
  final String number;
  final String content;

  ParagrafListCostum({required this.number,required this.content, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, top: 4),
      child:   Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
                child: Text(
                  "$number",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                child: Text(
                  "$content",
                  textAlign: TextAlign.justify,
                  style: regular_paragraf,
                ),
              )
            ],
          ),
    
      
    );
  }
}
