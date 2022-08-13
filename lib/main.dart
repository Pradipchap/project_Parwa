import 'dart:ffi';

import 'package:hexcolor/hexcolor.dart';
import 'package:panorama/panorama.dart';
import 'package:projectparwa/virtual.dart';

import './calender.dart';
import './events.dart';
import './hotels.dart';

import '../ganesh.dart';
import 'firstjatra.dart';
import '../eid.dart';
import 'firstshiva.dart';
import 'pujaripara.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../panaroma.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyApp(),
    theme: themeData,
    
  ));
}

class CardItem {
  final String asimage;
  final String title;
  final Widget link;

  final String subtitle;

  const CardItem({
    required this.asimage,
    required this.title,
    required this.link,
    required this.subtitle,
  });
}
//for secondcarditem

final ThemeData themeData = ThemeData(
  canvasColor: Colors.transparent
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffAC7738),
      body: Stack(
        children: [
          Positioned(
              top: -20,
              left: -135,
              child:
                  //  Image(image: AssetImage('images/circle.png'))),
                  Container(
                width: screenWidth * 0.6,
                height: screenHeight * 0.2,
                //color: Colors.red,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/circle.png'),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.rectangle,
                ),
              )),
          Positioned(
              top: -75,
              left: -40,
              child:
                  //  Image(image: AssetImage('images/circle.png'))),
                  Container(
                width: screenWidth * 0.6,
                height: screenHeight * 0.2,
                //color: Colors.red,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/circle2.png'),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.rectangle,
                ),
              )),

          //for parwa word
          Positioned(
            top: screenHeight * 0.04,
            left: screenWidth * 0.5,
            child: Container(
              margin: const EdgeInsets.all(20),
              height: screenHeight * 0.3,
              // color: Colors.red,

              width: screenWidth * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/parpic.png'),
                  fit: BoxFit.contain,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
          ),

          //for parwa garland

          Positioned(
            //<-- SEE HERE
            top: screenHeight * 0.28,

            child: SizedBox(
              width: screenWidth * 1,
              height: screenHeight * 0.2,
              child: SvgPicture.asset('images/5059539.svg'),
            ),
          ),

          //for Textfields
          Positioned(
            //<-- SEE HERE
            top: screenHeight * 0.5,

            child: Container(
              width: screenWidth * 1,
              height: screenHeight * 0.350,
              child: Column(
                children: [
                  SizedBox(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffCBDDE7),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: InputBorder.none,
                        hintText: 'Enter your Email',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    width: 400,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffCBDDE7),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: InputBorder.none,
                        hintText: 'Enter your password',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.04),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, PageTwo());
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 24),
                        )),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            //<-- SEE HERE
            top: screenHeight * 0.88,
            left: screenWidth * 0.4,

            child: Container(
              width: screenWidth * 1,
              height: screenHeight * 0.2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/circle.png'),
                  fit: BoxFit.contain,
                ),
                shape: BoxShape.rectangle,
              ),
              child: Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, PageTwo());
                      },
                      child: Text(
                        'skip',
                        style: TextStyle(
                            fontSize: screenHeight * 0.03, color: Colors.black),
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}

class PageTwo extends MaterialPageRoute {
  PageTwo()
      : super(builder: (BuildContext ctx) {
          List<CardItem> items = [
            const CardItem(
              asimage: 'images/shiva.jpg',
              link: Firstshiva(),
              title: 'Shivaratri',
              subtitle: 'Tomorrow',
            ),
            const CardItem(
              asimage: 'images/ganesh.jpeg',
              link: Ganesh(),
              title: 'Ganesh Chaturthi',
              subtitle: '2079/05/23',
            ),
            const CardItem(
              asimage: 'images/jatra.jpg',
              link: Firstjatra(),
              title: 'Jatra',
              subtitle: '2079/06/13',
            ),
            const CardItem(
              asimage: 'images/eid.jpg',
              link: Eid(),
              title: 'Bakra Eid',
              subtitle: '2079/08/12',
            ),
          ];

          //secondcard starts

          return Scaffold(
            backgroundColor: HexColor('#E4F1F8'),
            appBar: AppBar(
              title: const Text(
                'Home',
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.notifications,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.account_circle,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            drawer: Drawer(
                backgroundColor: HexColor("#A7BFCC"),

                // Add a ListView to the drawer. This ensures the user can scroll
                // through the options in the drawer if there isn't enough vertical
                // space to fit everything.
                child: ListView(
                  children: [
                    const DrawerHeader(
                      child: UserAccountsDrawerHeader(
                        currentAccountPicture:  CircleAvatar(
                          backgroundImage: AssetImage('images/profile.png'),
                          radius: 100.0,
                        ),
                        accountName:  Text(
                          'Pradip123',
                          style: TextStyle(fontSize: 20),
                        ),
                        accountEmail: Text('pradipcpgn@gmail.com'),
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Events',
                        style: TextStyle(fontSize: 20),
                      ),
                      leading: const Icon(Icons.event),
                      onTap: () {
                        Navigator.pop(ctx);
                      },
                    ),
                    ListTile(
                      title: const Text('Vojanalaya', style: TextStyle(fontSize: 20)),
                      leading: const Icon(Icons.food_bank),
                      onTap: () {
                        Navigator.pop(ctx);
                      },
                    ),
                    ListTile(
                      title: const Text('Horoscope', style: TextStyle(fontSize: 20)),
                      leading: const Icon(Icons.fact_check_sharp),
                      onTap: () {
                        Navigator.pop(ctx);
                      },
                    ),
                    ListTile(
                      title: const Text('Pujari Paramarsha',
                          style: TextStyle(fontSize: 20)),
                      leading: const Icon(Icons.picture_as_pdf_outlined),
                      onTap: () {
                        Navigator.pop(ctx);
                      },
                    ),
                  ],
                )),
            body: SingleChildScrollView(
              child: Column(
                children: [
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
                            "Upcoming Events",
                            style: TextStyle(fontSize: 20),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 300,
                    child: SizedBox(
                      height: 300,
                      child: ListView.separated(
                        padding: const EdgeInsets.all(20),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        separatorBuilder: (context, _) =>
                            const SizedBox(width: 5),
                        itemBuilder: (context, index) =>
                            buildcard(items: items[index], context: context),
                      ),
                    ),
                  ),
                  const Divider(),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.all(20),
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            "Other Services",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        ctx,
                        MaterialPageRoute(builder: (context) => const Events()),
                      );
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
                            height: 230,
                            width: 40,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('images/events.png'),
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
                              'Events',
                              style: TextStyle(fontSize: 25),
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
                  const CustomContainer(
                      image: "images/resturant.png",
                      serviceName: "Pujari",
                      link: Pujari(),
                      heightt:20.00,
                      ),
                      const CustomContainer(
                    image: "images/images-2.png",
                    serviceName: "Virtualtour",
                    link: Virtual(),
                    heightt:20.00,
                  ),
                  const CustomContainer(
                      image: "images/horoscope.png",
                      serviceName: "Yatra",
                      link: Pujari(),heightt:20.00,),
                  
                ],
              ),
            ),
            //    Container(
            //     height: 50,
            //         margin: const EdgeInsets.all(20),
            //         color: Colors.transparent,
            //         child: Container(
            //           decoration:   BoxDecoration(
            //             color: Colors.blueGrey,
            //             borderRadius: BorderRadius.circular(20),
            //           ),
            //           child: const Center(
            //           child: Text("Upcoming Events" ,style: TextStyle(fontSize: 20), ),
            //          )
            //        ),
            //       ),
            //  border:Border.all(
            //      borderRadius:BorderRadius.all(
            //        Radius.circular(10),
            //      )
            //    )

//       SizedBox(
//       height: 300,
//        child: ListView.separated(
//         padding:const EdgeInsets.all(20),
//              scrollDirection: Axis.horizontal,
//               itemCount: 4,
//               separatorBuilder: (context,_)=>const SizedBox(width: 5),
//               itemBuilder: (context,index)=>buildcard(items:items[index],context: context),
//             ),
//  ),
          );
        });
}

class CustomContainer extends StatelessWidget {
  final String image;
  final String serviceName;
  final Widget link;
  final double? heightt;
  const CustomContainer({
    required this.image,
    required this.serviceName,
    required this.link,
    required this.heightt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => link),
        );
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
              height:100 ,
              width: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
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
              child: Text(
                serviceName,
                style: const TextStyle(fontSize:25),
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
    );
  }
}

///for carditem
///
buildcard({required CardItem items, context}) => SizedBox(
      width: 230,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => items.link),
          );
        },
        child: Column(children: [
          Expanded(
              child: AspectRatio(
            aspectRatio: 4 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Material(
                child: Ink.image(
                  image: AssetImage(items.asimage),
                  fit: BoxFit.cover,
                  child: const InkWell(),
                ),
              ),
            ),
          )),
          const SizedBox(height: 4),
          // ignore: sized_box_for_whitespace
          Container(
            height: 50,
            width: 200,
            child: Column(
              children: [
                Text(
                  items.title,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          Text(
            items.subtitle,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ]),
      ),
    );

//for secondCardItem
