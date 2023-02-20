import 'package:flutter/material.dart';
import 'package:word_app/src/pages/daily_word_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: DailyWordPage(),
        ));
  }
}
