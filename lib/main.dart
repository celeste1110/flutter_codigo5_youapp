import 'package:flutter/material.dart';
import 'package:flutter_codigo5_youapp/pages/init_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example',
      home: InitPage(),
    );
  }
}
