import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../screens/index.dart';

var homeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new Home();
  },
);

var aboutHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return About();
    }
);

var contactHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String id = params['id']?.first;
      return Contact(id: '22');
    }
);