import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projectparwa/eid.dart';
import 'package:projectparwa/ganesh.dart';
import 'package:projectparwa/firstjatra.dart';
import 'package:projectparwa/mainshivaratri.dart';
import '../firstshiva.dart';

class Pujari extends StatelessWidget {
  const Pujari({Key? key}) : super(key: key);

  _showModalBottomSheet(context){
    showModalBottomSheet(context: context, builder:(BuildContext context){
      return  Container(
        
        
        height: 400,
        decoration:  BoxDecoration(
          color: HexColor('#E4F1F8'),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              decoration:const BoxDecoration(
                image: DecorationImage(
                          image: AssetImage('images/pandit.jpg'),
                          fit: BoxFit.contain,
                        ),
              ),
            ),
            Text("Samir Prasad Koirala",style: TextStyle(fontSize: 30),),
            const Divider(),
            Text("Shukla Yajurveda, Rigveda, Krishna Yajaurveda, Samveda, Atharvaveda",style: TextStyle(fontSize: 20),),
            const Divider(),
            Text("Performs: Yagga, Sharada, ",style: TextStyle(fontSize: 20),),
           
           const Divider(),
            ElevatedButton(onPressed: (){}, child: Text('Book Appointment'))
          ],
        ),
      
        
      );

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Pujari Paramarsha'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Container(
              height: 50,
              margin: const EdgeInsets.all(20),
              color: Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Our Priests",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
               
              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                margin: const EdgeInsets.all(5),

                // color: Colors.blueGrey[200],

                height: 100,

                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 200,
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/pujari1.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const Divider(),
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 70,
                      width: 265,
                      
                        child: const Text(
                          'Rishi Prasad',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    
                  ],
                ),
                //      const SizedBox(

                //      height: 40,
                //      width: 400,
                //       child:
                //       Text('Events',style: TextStyle(fontSize: 20),)

                // ),
              ),
            ),
            const Divider(),
            GestureDetector(
              onTap: () {
                _showModalBottomSheet(context);
                
              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                margin: const EdgeInsets.all(5),

                // color: Colors.blueGrey[200],

                height: 100,

                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 200,
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/pujari2.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const Divider(),
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 70,
                      width: 265,
                      child: const Text(
                        'Samir Koirala',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
                //      const SizedBox(

                //      height: 40,
                //      width: 400,
                //       child:
                //       Text('Events',style: TextStyle(fontSize: 20),)

                // ),
              ),
            ),
            const Divider(),
            GestureDetector(
              onTap: () {


              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                margin: const EdgeInsets.all(5),

                // color: Colors.blueGrey[200],

                height: 100,

                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 200,
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/pujari3.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const Divider(),
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 70,
                      width: 265,
                      child: const Text(
                        'Rohan Acharya',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
                //      const SizedBox(

                //      height: 40,
                //      width: 400,
                //       child:
                //       Text('Events',style: TextStyle(fontSize: 20),)

                // ),
              ),
            ),
            const Divider(),
            GestureDetector(
              onTap: () {
                
               
              },
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                margin: const EdgeInsets.all(5),

                // color: Colors.blueGrey[200],

                height: 100,

                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      height:300,
                      width: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/pandit.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    const Divider(),
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 100,
                      width: 265,
                      child: Column(
                        children: const [
                          Text(
                            'Pradip Chapagain',
                            
                            style: TextStyle(fontSize: 30),
                          ),
                        //  Text('PhD in sanskrit from \nBanaras Hindu university',style: TextStyle(fontSize:11,color: Colors.blueGrey),)
                        ],
                      ),
                    ),
                  ],
                ),
                //      const SizedBox(

                //      height: 40,
                //      width: 400,
                //       child:
                //       Text('Events',style: TextStyle(fontSize: 20),)

                // ),
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
