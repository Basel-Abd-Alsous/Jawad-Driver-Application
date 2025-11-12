import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../utils/text_style.dart';

class WebViewScreen extends StatelessWidget {
  final String? url;
  final String? title;
  final bool? notLogin;

  const WebViewScreen({super.key, this.url, this.title, this.notLogin = false});

  WebViewController _createController(BuildContext context) {
    final controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..clearCache()
          ..setNavigationDelegate(
            NavigationDelegate(
              onPageStarted: (_) => SmartDialog.showLoading(msg: 'loading ....'),
              onPageFinished: (_) => SmartDialog.dismiss(),
              onWebResourceError: (_) => SmartDialog.dismiss(),
            ),
          )
          ..loadRequest(Uri.parse(url ?? 'https://example.com'));
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    final controller = _createController(context);
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(title ?? '', style: AppTextStyle.style16B)),
      body: Column(children: [Expanded(child: WebViewWidget(controller: controller))]),
    );
  }
}
