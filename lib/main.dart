import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

import 'router/app_routes.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Components',
      initialRoute: AppRoutes.initalRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute:AppRoutes.onGeneratedRoute,
      theme: AppTheme.lightTheme
    );
  }
}