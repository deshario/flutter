import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  final String id;
  final String title;

  Contact({@required this.id, this.title});

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
      body: Text('Contact ${id}'),
    );
  }
}