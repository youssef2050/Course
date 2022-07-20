import 'package:flutter/material.dart';
import 'package:stateless_weight_stateful_weight/card_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CardUser(name: "test1", address: "test1", age: 23),
    );
  }
}
