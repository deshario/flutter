import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_base/routes/routes.dart';
import 'package:flutter_base/routes/application.dart';

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  MyAppState() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Fluro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute : Routes.about,
      onGenerateRoute: Application.router.generator,
    );
    debugPrint("initial route = ${app.initialRoute}");
    return app;
  }
}


void main() async {
  runApp(new MyApp());
}