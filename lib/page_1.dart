import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'constants/colors_page.dart';

class Page1Screen extends StatefulWidget {
  const Page1Screen({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1Screen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Go Router, Page 1"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "This is page 1",
                style: TextStyle(color: AppColors.red, fontSize: 34),
              ),
              ElevatedButton(
                onPressed: () {
                  context.go('/page2');
                },
                child: const Text('Go to page 2'),
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
