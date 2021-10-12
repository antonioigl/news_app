import 'package:flutter/material.dart';
import 'package:news_app/src/pages/tabs_page.dart';
import 'package:news_app/src/theme/tema.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: miTema,
      debugShowCheckedModeBanner: false,
      home: TabsPage()
    );
  }
}
