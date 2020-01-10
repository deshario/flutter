import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  final String id;

  Contact({@required this.id});

  @override
  ContactState createState() => ContactState(id: id);
}

class ContactState extends State<Contact> {

  final String id;

  ContactState({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Text('Contact'),
    );
  }
}