import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import './handler.dart';

class Routes {
  static String home = "/";
  static String about = "/about";
  static String contact = "/contact";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          debugPrint('NOT FOUND');
          return Text('Not Found');
        }
    );

    router.define(home, handler: homeHandler);
    router.define(about, handler: aboutHandler);
    router.define(contact, handler: contactHandler);

  }
}
