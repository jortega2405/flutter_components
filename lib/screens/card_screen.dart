import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Card Widget'
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(13),
        children:  const [
          AppCardOne(),
          SizedBox(height: 10),
          AppCardTwo(imageUrl: 'https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
          description: 'I have a description'),
          SizedBox(height: 10),
          AppCardTwo(imageUrl: 'https://images.theoutbound.com/uploads/1467254193093/trux335e7ki0w9vl/a81998d93544091aa62ab347a21075e3?w=1200&h=630&fit=crop&dpr=1&q=60&s=c27e536363b836639c7be625f5788874',),
          SizedBox(height: 10),
          AppCardTwo(imageUrl: 'https://images.squarespace-cdn.com/content/v1/59ef2d3c9f8dce981401a30d/1592002341643-UCT10ZFLQ5GCJU8L1OVY/colorful+landscapes.jpg?format=1000w',),
        ],
      )
    );
  }
}

