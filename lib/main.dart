import 'package:flutter/material.dart';
import 'package:mattbank/screens/dashboard.dart';

import 'database/appDatabase.dart';
import 'modelo/contact.dart';

void main() {
  runApp(const MattBankApp());
  save(Contact(0, 'Mariana', 2000));
  findAll().then((contacts) => debugPrint(contacts.toString()));
}

class MattBankApp extends StatelessWidget {
  const MattBankApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.teal[400],
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(primary: Colors.teal[400], secondary: Colors.cyanAccent[700]),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
              MaterialStateProperty.all(Colors.cyanAccent[700])
          )
        )),
        home: Dashboard());
  }
}


