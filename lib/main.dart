import 'package:flutter/material.dart';
import 'package:pattern_learning/utils/PatternPageProvider.dart';
import 'package:pattern_learning/widgets/pattern_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PatternPageProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          // body: ChangeNotifierProvider(
          //   create: (context) => PatternPageProvider(),
          //   child: PatternPage(),
          // ),
          body: PatternPage(),
        ),
      ),
    );
  }
}
