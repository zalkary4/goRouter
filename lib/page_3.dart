import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors_page.dart';
import 'package:go_router/go_router.dart';

class Page3Screen extends StatefulWidget {
  const Page3Screen({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3Screen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Go Router, Page 3"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "This is page 3",
                style: TextStyle(color: AppColors.black, fontSize: 34),
              ),
              ElevatedButton(
                onPressed: () {
                  context.go('/');
                },
                child: const Text('Go to page 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.go('/page2');
                },
                child: const Text('Go to page 2'),
              ),
            ],
          ),
        ),
      );
}
