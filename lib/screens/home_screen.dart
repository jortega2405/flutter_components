import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';
import '../models/models.dart';



class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          title:  Text(menuOptions[i].name),
          leading:  Icon(menuOptions[i].icon, color: AppTheme.primary,),
          onTap: () {
            Navigator.pushNamed(context, menuOptions[i].route);
            // final route = MaterialPageRoute(builder: (context) => const ListViewOneScreen(),);
            // Navigator.push(context, route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: AppRoutes.menuOptions.length
      )
    );
  }
}