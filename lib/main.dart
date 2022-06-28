import 'package:flutter/material.dart';
import 'package:flutter_practice_1/splashScreen.dart';
import 'package:sync_flutters_charts/charts.dart';
import 'package:syncfusion_flutter_core/core.dart';

void main() {
  // Register your license here
  SyncfusionLicense.registerLicense(null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NUPINS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
