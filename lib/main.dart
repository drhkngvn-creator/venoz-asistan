import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: VenozApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class VenozApp extends StatefulWidget {
  const VenozApp({super.key});

  @override
  State<VenozApp> createState() => _VenozAppState();
}

class _VenozAppState extends State<VenozApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://drhkngvn-creator.github.io/venoz-asistan/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(controller: controller),
      ),
    );
  }
}
