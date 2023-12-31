import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../widgets/app_bar_assignment.dart';
import '../widgets/app_bar_widget.dart';

class PSikap9 extends StatefulWidget {
  PSikap9({Key? key}) : super(key: key);

  @override
  State<PSikap9> createState() => _PSikap9State();
} 

class _PSikap9State extends State<PSikap9> {
  late InAppWebViewController controller;
  String url =
      "https://docs.google.com/forms/d/e/1FAIpQLSdD-T-NySf1t7R4fUKK0Bo1sM1Jp_dT-4ir291ek-gUNdmdUw/viewform?usp=sharing";
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
