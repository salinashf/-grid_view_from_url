import 'package:flutter/material.dart';
import 'package:grid_view_from_url/widget/screen/grid_buttons_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GridButtonsScreen(),
    );
  }
}
