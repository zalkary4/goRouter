import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_1.dart';
import 'package:flutter_application_1/page_2.dart';
import 'package:flutter_application_1/page_3.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  // static const String title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        // title: title,
      );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const Page1Screen(),
      ),
      GoRoute(
        path: '/page2',
        builder: (BuildContext context, GoRouterState state) =>
            const Page2Screen(),
      ),
      GoRoute(
        path: '/page3',
        builder: (BuildContext context, GoRouterState state) =>
            const Page3Screen(),
      ),
    ],
  );
}
