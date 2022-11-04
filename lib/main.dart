import 'package:flutter/material.dart';
import 'package:new_project/forms/validation_form.dart';
import 'package:new_project/navigation/hero.dart';
import 'package:new_project/navigation/return_data.dart';
import 'package:new_project/navigation/routing.dart';
import 'package:new_project/networking/data_fetch.dart';
import 'package:new_project/networking/data_send.dart';
import 'package:new_project/networking/fetch_json.dart';
import 'getStarted/randomWords.dart';
import 'main_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Projects',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainMenu(
              title: 'App Test',
            ),
        '/hero': (context) => const HeroScreen(),
        '/routing': (context) => const Routing(),
        '/randomwords': (context) => const RandomWords(),
        '/returndata': (context) => const ReturnDataScreen(),
        '/validation': (context) => const ValidationForm(),
        '/customdrawer': (context) => const ReturnDataScreen(),
        '/datafetch': (context) => const DataFetch(),
        '/datasend': (context) => const DataSend(),
        '/fetchjson': (context) => const FetchJson(),
      },
    );
  }
}
