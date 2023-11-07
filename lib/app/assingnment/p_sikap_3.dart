import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../widgets/app_bar_assignment.dart';
import '../widgets/app_bar_widget.dart';

class PSikap3 extends StatefulWidget {
  PSikap3({Key? key}) : super(key: key);

  @override
  State<PSikap3> createState() => _PSikap3State();
} 

class _PSikap3State extends State<PSikap3> {
  late InAppWebViewController controller;
  String url =
      "https://docs.google.com/forms/d/e/1FAIpQLSe7rl81KI0JBuW4v30U6bxh_j1UyievZ3eBep9tJZO6EgSV5w/viewform?usp=sharing";
  double progress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAssignment(),
      body: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.cyanAccent),
        ),
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(url)),
          onWebViewCreated: (InAppWebViewController webViewController) {
            controller = webViewController;
          },
          onLoadStart: (controller, url) {
            setState(() {
              this.url = url.toString();
            });
          },
          onLoadStop: (controller, url) {
            setState(() {
              this.url = url.toString();
            });
          },
          onProgressChanged: (controller, progress) {
            setState(() {
              this.progress = progress / 100;
            });
          },
        ),
      ),
    );
  }
}
