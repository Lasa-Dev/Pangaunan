import 'package:flutter/material.dart';
import 'package:pangaunan/optionDetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pangaunan',
      theme: ThemeData(
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
];

List<String> title = [
  "Daral",
  "Panngih Panggih",
  "Wadjit",
  "Panganan",
  "Panyam",
  "Pasung",
  "Pitis",
  "Tabid Tabid",
  "Bawlu",
  "Apam",
  "Pastil",
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
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_none),
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
                      width: 120.0,
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
                        SizedBox(height: 10.0),
                        Text(
                          '"Mga pagkaun sin bangsa."',
                          style: _textStyle.copyWith(fontSize: 14.0),
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
                  Column(
                    children: <Widget>[
                      Text(
                        '392k',
                        style: _textStyle.copyWith(fontSize: 30.0),
                      ),
                      Text('Clients', style: _textStyle.copyWith(
                        fontSize: 14.0, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '321',
                        style: _textStyle.copyWith(fontSize: 30.0),
                      ),
                      Text('Paid', style: _textStyle.copyWith(
                        fontSize: 14.0, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '40 min',
                        style: _textStyle.copyWith(fontSize: 30.0),
                      ),
                      Text('Paseo del Mar', style: _textStyle.copyWith(
                        fontSize: 14.0, fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
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
                    color: Colors.blue[100].withOpacity(0.3),
                    offset: Offset(0.0, -10.0),
                    blurRadius: 8.0
                  )
                ]
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Bang-Bang Sug',
                          style: _textStyle.copyWith(fontSize: 28.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '20',
                              style: _textStyle.copyWith(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
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
                  SizedBox(height: 15.0),
                  MenuList(),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Fara Con Ele',
                            style: _textStyle.copyWith(
                              fontSize: 28.0, fontWeight: FontWeight.bold),
                            ),
                        ),
                        Material(
                          elevation: 15.0,
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.orange,
                          shadowColor: Colors.orange.withOpacity(0.6),
                          child: MaterialButton(
                            onPressed: (){},
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              'Pader',
                              style: _textStyle.copyWith(
                                fontSize: 22.0, 
                                color: Colors.white, 
                                fontWeight: FontWeight.bold),
                            )
                          ),
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
                                'Joans de Pharma',
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
            )
          ],
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
        padding: EdgeInsets.only(left: 30.0),
        child: Container(
          height: 260.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MenuOption(title: title[0], image: image[0]),
              MenuOption(title: title[1], image: image[1]),
              MenuOption(title: title[2], image: image[2]),
              MenuOption(title: title[3], image: image[3]),
              MenuOption(title: title[4], image: image[4]),
              MenuOption(title: title[5], image: image[5]),
              MenuOption(title: title[6], image: image[6]),
              MenuOption(title: title[7], image: image[7]),
              MenuOption(title: title[8], image: image[8]),
              MenuOption(title: title[9], image: image[9]),
              MenuOption(title: title[10], image: image[10]),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuOption extends StatefulWidget {
  final String title, image;
  MenuOption({this.title, this.image});
  
  @override
  _MenuOptionState createState() => _MenuOptionState();
}

class _MenuOptionState extends State<MenuOption> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => OptionDetail(title: widget.title))
        );
      },
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          child: Stack(
            children: <Widget>[
              Container(
                width: 160.0,
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
                        fontSize: 24.0, 
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