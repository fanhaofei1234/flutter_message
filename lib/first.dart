import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FirstRouteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstRouteWidgetState();
  }
}

class _FirstRouteWidgetState extends State<FirstRouteWidget> {
  _FirstRouteWidgetState();

  @override
  void initState() {
    print('initSt111ate');
    print("------${window.defaultRouteName}");

    super.initState();
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencie111s');
    print("------${window.defaultRouteName}");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(FirstRouteWidget oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('[XDEBUG] - FirstRouteWidget is disposing~');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First11'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Open native page'),
              onPressed: () {
                print("open native page!");
                Navigator.of(context).pushNamed("");
              },
            ),
            ElevatedButton(
                child: Text('Flutter to Flutter with Animation'),
                onPressed: () {
                  // FlutterBoost.singleton.open("f2f_first").then((Map<dynamic,dynamic> value) {
                  //   print(
                  //       "call me when page is finished. did receive second route result $value");
                  // });
                })
          ],
        ),
      ),
    );
  }
}
