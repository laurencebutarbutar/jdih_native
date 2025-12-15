import 'package:flutter/material.dart';
import 'home_page.dart';
import 'info_page.dart';
import 'main_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JDIH MPR RI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1351AA),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1351AA),
          foregroundColor: Colors.white,
          centerTitle: false,
        ),
      ),
      home: const MainNavigation(),
    );
  }
}
