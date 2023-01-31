import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {

  final String bannerName;
  final String bannerDetailUrl;


  const WebViewPage({Key? key,required this.bannerName,required this.bannerDetailUrl}) : super(key: key);

  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {


  late WebViewController webviewController = WebViewController()..setJavaScriptMode(JavaScriptMode.unrestricted)..loadRequest(Uri.parse(widget.bannerDetailUrl));
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           AppBar(
             title: Text(widget.bannerName),
             centerTitle: true,
           ),
           Expanded(
             child: WebViewWidget(
               controller: webviewController,
             ),
           )
         ],
       ),
    );
  }

  ///定义WebView 导航栏
  Widget _appBar(Color backGroundColor, Color backButtonColor) {
    return Container(
      color: backGroundColor,
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 10),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.close,
                  color: backButtonColor,
                  size: 26,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  widget.bannerName,
                  style: TextStyle(color: backGroundColor, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
