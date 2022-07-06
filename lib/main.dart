import 'package:flutter/material.dart';
// import 'package:login_using_provider/screens/dashBoard/dashHome.dart';
// import 'package:login_using_provider/modules/userDash.dart';
// import 'package:login_using_provider/screens/chatScreen.dart';
// import 'package:login_using_provider/screens/dashBoard/dashHome.dart';
import 'package:login_using_provider/user.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'screens/homepage.dart';
import 'package:go_router/go_router.dart';
import 'screens/loginpage.dart';
// import 'screens/chatScreen.dart';
// ignore: unused_import, depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'user.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => User())],
    child: MyApp(),
  ));
}

// class MyApp extends StatefulWidget {
//   MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   // This widget is the root of your application.
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  // ();
  // }
// }
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }

  final router = GoRouter(
    routes: [
      GoRoute(
        name: "login",
        path: "/",
        pageBuilder: (context, state) => const MaterialPage(
          child: LoginPage(),
        ),
      ),
      GoRoute(
        name: "home",
        path: "/Homepage",
        pageBuilder: (context, state) => const MaterialPage(child: Homepage()),
        // routes: [
        //   GoRoute(
        //       name: "chatScreen",
        //       path: "chatScreen/chat",
        //       pageBuilder: (context, state) =>
        //           const MaterialPage(child: ChatScreen()))
        // ],
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(
        body: Center(
          child: Text(state.error.toString()),
        ),
      ),
    ),
  );
// }
}
