import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../widgets/app_bar_assignment.dart';
import '../widgets/app_bar_widget.dart';

class PSikap1 extends StatefulWidget {
  PSikap1({Key? key}) : super(key: key);

  @override
  State<PSikap1> createState() => _PSikap1State();
}

class _PSikap1State extends State<PSikap1> {
  late InAppWebViewController controller;
  String url =
      "https://docs.google.com/forms/d/e/1FAIpQLSfotmM0Jz7Hl9Rp3m0KP71bZHAjWiBxVt163MgE6bSmlWU9Aw/viewform?usp=sharing";
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
