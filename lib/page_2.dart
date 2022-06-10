import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_page.dart';
import 'package:go_router/go_router.dart';

import 'constants/colors_page.dart';

class Page2Screen extends StatefulWidget {
  const Page2Screen({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2Screen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Go Router, Page 2"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "This is page 2",
                style: TextStyle(color: AppColors.green, fontSize: 34),
              ),
              ElevatedButton(
                onPressed: () {
                  context.go('/');
                },
                child: const Text('Go to page 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.go('/page3');
                },
                child: const Text('Go to page 3'),
              ),
            ],
          ),
        ),
      );
}
