import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starting_provider/pages/first_page.dart';
import 'package:starting_provider/pages/second_page.dart';
import 'package:starting_provider/providers/counter_provider.dart';
import 'package:starting_provider/providers/shooping_card.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (_) => Counter(),),
      ChangeNotifierProvider(create: (_) => ShooppingCart(),)
    ],
    child: const MyApp(),
    )
    )  ;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const MyFirstPage(),
        "/second" : (context) => const SecondPage(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
