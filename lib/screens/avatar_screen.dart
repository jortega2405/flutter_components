import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Erling Haland'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:  CircleAvatar(
              backgroundColor: Colors.teal.shade900,
              child: const Text('EH'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
           backgroundImage: NetworkImage('https://phantom-marca.unidadeditorial.es/00eb0acca9e081e1d1dbb279960d2d89/resize/1320/f/jpg/assets/multimedia/imagenes/2022/08/04/16596032563195.jpg'),
        ),
      ),
    );
  }
}