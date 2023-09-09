import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProfileWebView extends StatefulWidget {
  const ProfileWebView({super.key});

  @override
  State<ProfileWebView> createState() => _ProfileWebViewState();
}

class _ProfileWebViewState extends State<ProfileWebView> {

  late final WebViewController _controller;
  var progress = 0;


  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            progress = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            progress = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            progress = 100;
          });
        },
      ))
      ..loadRequest(Uri.parse('https://github.com/Josh-Ross-Dev'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
            children: [
              WebViewWidget(controller: _controller),
              if (progress < 100)
                LinearProgressIndicator(
                  color: Colors.deepPurple,
                  backgroundColor: Colors.grey,
                  value: progress / 100.0,
                ),
            ],
        )
    );
  }
}

