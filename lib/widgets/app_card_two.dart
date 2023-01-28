import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';


class AppCardTwo extends StatelessWidget {
  final String imageUrl;
  final String? description;
   
  const AppCardTwo({super.key,  required this.imageUrl,  this.description});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.4),
      child: Column(
        children:   [
           FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/gifs/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration:  const Duration(milliseconds: 300),
          ),
          if(description != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only( right: 20, top: 10, bottom: 10),
            child: Text(description!),
          )
        ],
      ),
    );
  }
}