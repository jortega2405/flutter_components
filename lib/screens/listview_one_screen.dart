

import 'package:flutter/material.dart';

class ListViewOneScreen extends StatelessWidget {

  final options = const["Netflix", "YouTube", "Amazon", "HBO", "Twich", "Theta"];
   
  const ListViewOneScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
        "List View One"
        ),
      ),
      body: ListView(
        children: [
          ...options.map((platform) => ListTile(
            title: Text(platform),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          )).toList()
        ],
      )
    );
  }
}