import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/routes/application.dart';
import 'package:flutter_base/routes/routes.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Container(
        child: Column(

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Application.router.navigateTo(
              context,
              '${Routes.contact}?id=${Uri.encodeComponent('123')}&title=${Uri.encodeComponent('Hello Contact')}',
              transition: TransitionType.inFromRight
          );
        },
        child: Icon(Icons.play_circle_outline),
      ),
    );
  }
}
