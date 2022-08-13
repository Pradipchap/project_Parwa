import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:panorama/panorama.dart';
import '../main.dart';

class Panaroma extends StatelessWidget {
  const Panaroma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:const  Text('Bhaktapur Durbar Square'),),
      body: Center(
        child: SizedBox(
          
           child: Panorama(
            child: Image.asset('images/bhaktapur.jpg'),
            
            
            
          
           ),
        ),
      ),
    );
    
  }
}