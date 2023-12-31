import 'package:flutter/material.dart';
import 'package:heroapps_demo/product/constants/app_contants.dart';
import 'package:heroapps_demo/view/main/view/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
        useMaterial3: true,
      ),
      home: const MainView(
        pages: AppConstants.pages,
      ),
    );
  }
}
