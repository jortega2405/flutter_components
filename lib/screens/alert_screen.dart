import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIos(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Alert'),
          content: Column (
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('you must put your alert here!'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), 
            child: const Text('Cancel', style: TextStyle(color: Colors.red))),
             TextButton(onPressed: () => Navigator.pop(context), 
            child: const Text('Ok'))
          ],
        );
      });
  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return  AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(17)
          ),
          title: const Text('Alert'),
          content: Column (
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('you must put your alert here!'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), 
            child: const Text('Cancel', style: TextStyle(color: Colors.red),)),
            TextButton(onPressed: () => Navigator.pop(context), 
            child: const Text('Ok')),
          ],
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          onPressed: (() => Platform.isAndroid ? displayDialogAndroid(context):
          displayDialogIos (context)),
          child: const Text('Show alert'),

        )
      ),
      floatingActionButton: FloatingActionButton(    
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
        
      ),
    );
  }
}