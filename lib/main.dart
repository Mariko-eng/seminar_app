import 'package:flutter/material.dart';
import 'package:seminar_app/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme(),
      home: const HomeView(),
    );
  }
}

appTheme() => ThemeData(
  useMaterial3: true,
  primaryColor: Color(0xff143D90),
  appBarTheme: AppBarTheme(
    color: Color(0xff143D90)
  )
);
