import 'package:flutter/material.dart';
import 'package:pangaunan/optionDetail.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pangaunan',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEFEFEF),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final TextStyle _textStyle = 
TextStyle(fontFamily: 'Rubik', fontSize: 16.0, color: Colors.grey[800]);

List<String> image = [
  "assets/images/Dennis-Coffee-Garden-Daral.jpg",
  "assets/images/Dennis-Coffee-Garden-Panggih-Panggih.jpg",
  "assets/images/Dennis-Coffee-Garden-Wadjit.jpg",
  "assets/images/Panganan.jpg",
  "assets/images/Panyam.jpg",
  "assets/images/Pasung.jpg",
  "assets/images/Pitis.jpg",
  "assets/images/Tabid-Tabid.jpg",
  "assets/images/Bawlu.jpg",
  "assets/images/Apam.jpg",
  "assets/images/Dennis-Coffee-Garden-Pastil.jpg",
  "assets/images/Satti.jpg",
  "assets/images/Tiyula-Itum.jpg",
  "assets/images/Pyanggang.jpg",
  "assets/images/Junay.jpg",
  "assets/images/Syanlag.jpg",
  "assets/images/Pyuto.jpg",
  "assets/images/Agar-Agar.jpg",
];

List<String> title = [
  "Daral",
  "Panggih Panggih",
  "Wadjit",
  "Panganan",
  "Panyam",
  "Pasung",
  "Pitis",
  "Tabid Tabid",
  "Bawlu",
  "Apam",
  "Pastil",
  "Satti",
  "Tiyula-Itum",
  "Pyanggang",
  "Junay",
  "Syanlag",
  "Pyuto",
  "Agar-Agar",
];

List<String> desc = [
  "Moisture-rich crepe with sweet coconut filling.",
  "Soft and chewy flour rings.",
  "Purple glutinous rice cooked in pure coconut milk.",
  "Wayruun pa masi kya nganan sambil pa bhaun.",
  "Masarap bang bakas ha pag-mawludan.",
  "Pasung pasung pasung pasuuuuuuung.",
  "Pitis, pitis bih na kamu pitis mapasu pa.",
  "Tyabid ampa tyabid sambil nahinang tabid-tabid.",
  "Bawlu lang po sa umaga.",
  "Apam da lab por meeeeeeeeeee.",
  "Pastilan dude.",
  "Satti",
  "Tiyula-Itum",
  "Pyanggang",
  "Junay",
  "Syanlag",
  "Pyuto",
  "Agar-Agar",
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.blue[300],
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.blue[300],
            iconSize: 30.0,
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.blue[300],
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      width: 150.0,
                      image: AssetImage('assets/images/pangaunan_logo1.jpg'),
                    ),
                  ),
                  SizedBox(width: 25.0),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Pangaunan',
                          style: _textStyle.copyWith(fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Tausug Pastries & Meals',
                          style: _textStyle.copyWith(fontSize: 25.0),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Zamboanga City, Philippines',
                          style: _textStyle.copyWith(fontSize: 12.0),
                          )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                    children: <Widget>[
                      // Text(
                      //   '392k',
                      //   style: _textStyle.copyWith(fontSize: 30.0),
                      // ),
                      Text('To help Muslim community in choosing a right place to eat with their family and friends.', style: _textStyle.copyWith(
                        fontSize: 16.0),)
                    ],
                  ),
                  ),
                  
                  // Column(
                  //   children: <Widget>[
                  //     Text(
                  //       '321',
                  //       style: _textStyle.copyWith(fontSize: 30.0),
                  //     ),
                  //     Text('Paid', style: _textStyle.copyWith(
                  //       fontSize: 14.0, fontWeight: FontWeight.bold),)
                  //   ],
                  // ),
                  // Column(
                  //   children: <Widget>[
                  //     Text(
                  //       '10-15 min',
                  //       style: _textStyle.copyWith(fontSize: 30.0),
                  //     ),
                  //     Text('Delivery', style: _textStyle.copyWith(
                  //       fontSize: 14.0, fontWeight: FontWeight.bold),)
                  //   ],
                  // )
                ],
              ),
            ),
            // SizedBox(height: 5.0),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue[100].withOpacity(0.5),
                    offset: Offset(0.0, -10.0),
                    blurRadius: 8.0
                  )
                ]
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Bangbang Sug',
                          style: _textStyle.copyWith(fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        // Row(
                        //   children: <Widget>[
                        //     Text(
                        //       'Tausug Pastries',
                        //       style: _textStyle.copyWith(
                        //         fontSize: 20.0,),
                        //     ),
                        //     SizedBox(width: 3.0,),
                        //     // Text(
                        //     //   '06',
                        //     //   style: _textStyle.copyWith(fontSize: 20.0),
                        //     // )
                        //   ],
                        // )
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  MenuList(),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Tausug Pastries',
                          style: _textStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        // Row(
                        //   children: <Widget>[
                        //     Text(
                        //       'Tausug Meals',
                        //       style: _textStyle.copyWith(
                        //         fontSize: 20.0,),
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                    children: <Widget>[
                      // Text(
                      //   '392k',
                      //   style: _textStyle.copyWith(fontSize: 30.0),
                      // ),
                      Text('Also know as the Bangbang Sug is usually served with coffee. Most of the food are made with coconut as the main ingredient.', style: _textStyle.copyWith(
                        fontSize: 16.0, fontStyle: FontStyle.italic),)
                       ],
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue[100].withOpacity(0.5),
                    offset: Offset(0.0, -10.0),
                    blurRadius: 8.0
                  )
                ],
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Pagkaun Sug',
                          style: _textStyle.copyWith(fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        // Row(
                        //   children: <Widget>[
                        //     Text(
                        //       'Tausug Pastries',
                        //       style: _textStyle.copyWith(
                        //         fontSize: 20.0,),
                        //     ),
                        //     SizedBox(width: 3.0,),
                        //     // Text(
                        //     //   '06',
                        //     //   style: _textStyle.copyWith(fontSize: 20.0),
                        //     // )
                        //   ],
                        // )
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0),
                  MenuList1(),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Pagkaun Sug',
                          style: _textStyle.copyWith(fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Tausug Meals',
                              style: _textStyle.copyWith(
                                fontSize: 20.0,),
                            ),
                            SizedBox(width: 3.0,),
                            // Text(
                            //   '06',
                            //   style: _textStyle.copyWith(fontSize: 20.0),
                            // )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(
                            width: 100.0,
                            image: AssetImage('assets/images/user_profile.png'),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Test',
                                style: _textStyle.copyWith(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                      size: 32.0,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                      size: 32.0,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                      size: 32.0,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(
                                      Icons.star,
                                      color: Colors.yellow[600],
                                      size: 32.0,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(
                                      Icons.star,
                                      color: Colors.black45,
                                      size: 32.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  Completer<GoogleMapController> _controller = Completer();

    double zoomVal=5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: 
        IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
        ),
        title: Text("Zamboanga City"),
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
          _buildContainer(),
        ],
      ),
    );
  }

 Widget _zoomminusfunction() {

    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchMinus,color:Color(0xff6200ee)),
            onPressed: () {
              zoomVal--;
             _minus( zoomVal);
            }),
    );
 }
 Widget _zoomplusfunction() {
   
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
            icon: Icon(FontAwesomeIcons.searchPlus,color:Color(0xff6200ee)),
            onPressed: () {
              zoomVal++;
              _plus(zoomVal);
            }),
    );
 }

 Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(6.9038607, 122.0758119), zoom: zoomVal)));
  }
  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(6.9038607, 122.0758119), zoom: zoomVal)));
  }

  
  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipO3VPL9m-b355xWeg4MXmOQTauFAEkavSluTtJU=w225-h160-k-no",
                  6.9161971, 122.0594878,"Dennis Coffee Garden"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",
                  6.916016, 122.0600913,"Petrol Gas Station"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  6.9161661, 122.0598686,"Blue Hill"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(String _image, double lat,double long,String restaurantName) {
    return  GestureDetector(
        onTap: () {
          _gotoLocation(lat,long);
        },
        child:Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 180,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.fill,
                              image: NetworkImage(_image),
                            ),
                          ),),
                          Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: myDetailsContainer1(restaurantName),
                          ),
                        ),

                      ],)
                ),
              ),
            ),
    );
  }

  Widget myDetailsContainer1(String restaurantName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(restaurantName,
            style: TextStyle(
                color: Color(0xff6200ee),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(height:5.0),
        Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "4.1",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStarHalf,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
               Container(
                  child: Text(
                "(946)",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
            ],
          )),
          SizedBox(height:5.0),
        Container(
                  child: Text(
                "American \u00B7 \u0024\u0024 \u00B7 1.6 mi",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              )),
              SizedBox(height:5.0),
        Container(
            child: Text(
          "Closed \u00B7 Opens 17:00 Thu",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:  CameraPosition(target: LatLng(6.9038607, 122.0758119), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers:{
          newyork1Marker,newyork2Marker,newyork3Marker,gramercyMarker,bernardinMarker,blueMarker
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat,double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(lat, long), zoom: 15,tilt: 50.0,
      bearing: 45.0,)));
  }
}

Marker gramercyMarker = Marker(
  markerId: MarkerId('gramercy'),
  position: LatLng(6.9161971, 122.0594878),
  infoWindow: InfoWindow(title: 'Dennis Coffee Garden'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker bernardinMarker = Marker(
  markerId: MarkerId('bernardin'),
  position: LatLng(6.916016, 122.0600913),
  infoWindow: InfoWindow(title: 'petrol'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker blueMarker = Marker(
  markerId: MarkerId('bluehill'),
  position: LatLng(6.9161661, 122.0598686),
  infoWindow: InfoWindow(title: 'Mcdo'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

//New York Marker

Marker newyork1Marker = Marker(
  markerId: MarkerId('newyork1'),
  position: LatLng(6.9084762, 122.0793946),
  infoWindow: InfoWindow(title: 'Zamboanga'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork2Marker = Marker(
  markerId: MarkerId('newyork2'),
  position: LatLng(6.9062478, 122.0726927),
  infoWindow: InfoWindow(title: 'Zamboanga Port'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork3Marker = Marker(
  markerId: MarkerId('newyork3'),
  position: LatLng(6.9045496, 122.0760674),
  infoWindow: InfoWindow(title: 'City Hall'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

class MenuList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Container(
          height: 260.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MenuOption(title: title[11], desc: desc[11], image: image[11]),
              MenuOption(title: title[12], desc: desc[12], image: image[12]),
              MenuOption(title: title[13], desc: desc[13], image: image[13]),
              MenuOption(title: title[14], desc: desc[14], image: image[14]),
              MenuOption(title: title[15], desc: desc[15], image: image[15]),
              MenuOption(title: title[16], desc: desc[16], image: image[16]),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Container(
          height: 260.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MenuOption(title: title[0], desc: desc[0], image: image[0]),
              MenuOption(title: title[1], desc: desc[1], image: image[1]),
              MenuOption(title: title[2], desc: desc[2], image: image[2]),
              MenuOption(title: title[3], desc: desc[3], image: image[3]),
              MenuOption(title: title[4], desc: desc[4], image: image[4]),
              MenuOption(title: title[5], desc: desc[5], image: image[5]),
              MenuOption(title: title[6], desc: desc[6], image: image[6]),
              MenuOption(title: title[7], desc: desc[7], image: image[7]),
              MenuOption(title: title[8], desc: desc[8], image: image[8]),
              MenuOption(title: title[9], desc: desc[9], image: image[9]),
              MenuOption(title: title[10], desc: desc[10], image: image[10]),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuOption extends StatefulWidget {
  final String title, desc, image;
  MenuOption({this.title, this.desc, this.image});
  
  @override
  _MenuOptionState createState() => _MenuOptionState();
}

class _MenuOptionState extends State<MenuOption> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => OptionDetail(title: widget.title, desc: widget.desc, image: widget.image,))
        );
      },
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          child: Stack(
            children: <Widget>[
              Container(
                width: 140.0,
                height: 240.0,
                child: Image.asset(widget.image, fit:BoxFit.cover),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                width: 160.0,
                height: 240.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.3),
                      ]
                    )
                  ),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                width: 160.0,
                height: 240.0,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                    child: Text(
                      widget.title,
                      style: _textStyle.copyWith(
                        color: Colors.white, 
                        fontSize: 20.0, 
                        fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}