import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projectparwa/panaroma.dart';
import '../main.dart';
import '../pujaripara.dart';
class Virtual extends StatelessWidget {
  const Virtual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:const Text('Virtual Tour'),
        backgroundColor: Colors.blue,
        
      ),
      body: ListView(
        
        children:const [
         
          CustomContainer(
                      image: "images/basant.jpg",
                      serviceName: "Basantapur Durbar Square",
                      link: Panaroma(),
                      heightt: 15.00,),
           CustomContainer(
                      image: "images/swyambhu.webp",
                      serviceName: "Swombhunath",
                      link: Panaroma(),
                      heightt: 15.00,),
                       CustomContainer(
                      image: "images/bhakta.jpg",
                      serviceName: "Bhaktapur Durbar Square",
                      link: Panaroma(),
                      heightt: 15.00,),
          CustomContainer(
                      image: "images/bouddha.jpeg",
                      serviceName: "Boudhanath",
                      link: Panaroma(),
                      heightt: 15.00,),
                      

        ],
      ),
    )
    ;
    
  }
}