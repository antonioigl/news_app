import 'package:flutter/material.dart';
import 'package:news_app/src/pages/tabs_page.dart';
import 'package:news_app/src/services/news_service.dart';
import 'package:news_app/src/theme/tema.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new NewsService() ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: miTema,
          debugShowCheckedModeBanner: false,
          home: TabsPage()
      ),
    );
  }
}
