import 'package:Education/screens/contact_form.dart';
import 'package:Education/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'database/app_database.dart';
import 'models/contact.dart';

void main() {
  runApp(BytebankApp());
  save(Contact(id: 1, name: 'alex', accountNumber: 3000)).then((id){
    findAll().then((contacts) => debugPrint(contacts.toString()));
  });
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Dashboard(),
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        )
      )
    );
  }
}

