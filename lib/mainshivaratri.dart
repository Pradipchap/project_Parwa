
//       ,

//     );
    
//   }
// }



import 'package:flutter/material.dart';
// import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';


class CardItem {
  final String asimage;
  final String title;
  

  final String subtitle;

  const CardItem({
    required this.asimage,
    required this.title,
    
    required this.subtitle,
  });
}
class PujaItem {
  final String asimage;
  final String title;
  

  final String subtitle;

  const PujaItem({
    required this.asimage,
    required this.title,
    
    required this.subtitle,
  });
}

class Shivaratri extends StatelessWidget {
  const Shivaratri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // var marker = <Marker>[];
    MapController mapController = MapController(
      initMapWithUserPosition: false,
      initPosition: GeoPoint(
          latitude: 27.73540070397628, 
          longitude: 85.31279918960702), //27.698219685991415, 85.31878155610462
      areaLimit: BoundingBox(
        east: 10.4922941,
        north: 47.8084648,
        south: 45.817995,
        west: 5.9559113,
      ),
    );
    List<CardItem> items = [
            const CardItem(
              asimage: 'images/hotel1.jpg',
              
              title: 'Rooftop Hotel',
              subtitle: '⭐⭐   1.75 km',
            ),
            const CardItem(
              asimage: 'images/veghotel.jpg',
              
              title: 'Vaishavi Sweets',
              subtitle: '⭐⭐⭐⭐  2 km',
            ),
            const CardItem(
              asimage: 'images/hotel2.jpg',
             
              title: 'White Monk hotel',
              subtitle: '⭐⭐⭐⭐  2.3 km' ,
            ),
            const CardItem(
              asimage: 'images/hotel3.jpeg',
              
              title: 'Kali Misthan',
              subtitle: '⭐⭐⭐  2.2 km',
            ),
          ];
          List<CardItem> itemss = [
            const CardItem(
              asimage: 'images/pujasamagri1.jpg',
              
              title: 'rishi Puja Kendra',
              subtitle: '⭐⭐   1.75 km',
            ),
            const CardItem(
              asimage: 'images/pujasamagri2.jpg',
              
              title: 'Ram Enterprises',
              subtitle: '⭐⭐⭐⭐  2 km',
            ),
            const CardItem(
              asimage: 'images/pujasamagri3.jpg',
             
              title: 'Ram Setu Shop',
              subtitle: '⭐⭐⭐⭐  2.3 km' ,
            ),
           
          ];

   
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Shivaratri'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
              margin: const EdgeInsets.all(10),
              child: OSMFlutter(
                controller: mapController,
                
                onMapIsReady: (isReady) async {
                  RoadInfo? _ = await mapController
                      .drawRoad(
                        // 27.717270570289237, 85.28362843900693
                        // 27.6839491338726, 85.3486253694437
                        GeoPoint(
                            latitude: 27.676340293984115,
                            longitude:85.36114801726342),
                        GeoPoint(
                            latitude: 27.713,
                            longitude:85.321),
                            
                            
                        roadType: RoadType.foot,
                        // intersectPoint: [
                        //   GeoPoint(latitude: 47.4361, longitude: 8.6156),
                        //   GeoPoint(latitude: 47.4481, longitude: 8.6266)
                        // ],
                        roadOption: const RoadOption(
                          roadWidth: 10,
                          roadColor: Colors.blue,
                          showMarkerOfPOI: true,
                          zoomInto: true,
                        ),
                      )
                      .then((value) => null)
                      .onError((error, stackTrace) => null);
                },
                trackMyPosition: true,
                
                initZoom: 12,
                minZoomLevel: 8,
                maxZoomLevel: 18,
                stepZoom: 1.0,
                userLocationMarker: UserLocationMaker(
                  personMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.brightness_1,
                      color: Colors.red,
                      size: 48,
                    ),
                  ),
                  directionArrowMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.double_arrow,
                      size: 48,
                    ),
                  ),
                ),
                roadConfiguration: RoadConfiguration(
                  startIcon: const MarkerIcon(
                    icon: Icon(
                      Icons.person,
                      size: 64,
                      color: Colors.brown,
                    ),
                  ),
                  roadColor: Colors.yellowAccent,
                ),
                markerOption: MarkerOption(
                    defaultMarker: const MarkerIcon(
                  icon: Icon(
                    Icons.person_pin_circle,
                    color: Colors.blue,
                    size: 56,
                  ),
                )),
              ),
              // child: FlutterMap(
              //   options: MapOptions(center: LatLng(27.7154, 85.3123), zoom: 13),
              //   layers: [
              //     TileLayerOptions(
              //         urlTemplate:
              //             "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
              //         subdomains: ['a', 'b', 'c']),
              //     MarkerLayerOptions(
              //       markers: marker,
              //     ),
              //   ],
              // ),
            ),
            const Divider(),
            Container(
              margin:const  EdgeInsets.all(20),
              height: 40,
              color: Colors.blueGrey,
              child:const Center(child:  Text('Nearby Restaurants',style: TextStyle(fontSize: 20),)),
            ),
            const Divider(),
            
            Container(
              child: SizedBox(
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
            ),
            
            const Divider(),
            Container(
              margin:const  EdgeInsets.all(20),
              height: 40,
              color: Colors.blueGrey,
              child:const Center(child:  Text('Nearby Puja samagri Shops',style: TextStyle(fontSize: 20),)),
            ),
            const Divider(),
            Container(
              child: SizedBox(
                      height: 300,
                      child: SizedBox(
                        height: 300,
                        child: ListView.separated(
                          padding: const EdgeInsets.all(20),
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          separatorBuilder: (context, _) =>
                              const SizedBox(width: 5),
                          itemBuilder: (context, index) =>
                              buildpuja(itemss: itemss[index], context: context),
                        ),
                      ),
                    ),
            ),
           
              
              
              
            
             
            
            
            
          ],
          
        ),
        

        
      ),
    );
  }
}
buildcard({required CardItem items, context}) => SizedBox(
      width: 230,
      
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
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ]),
      );
    buildpuja({required CardItem itemss, context}) => SizedBox(
      width: 230,
      
        child: Column(children: [
          Expanded(
              child: AspectRatio(
            aspectRatio: 4 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Material(
                child: Ink.image(
                  image: AssetImage(itemss.asimage),
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
                  itemss.title,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          Text(
            itemss.subtitle,
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          ),
        ]),
      );
    