import 'package:flutter/material.dart';

import 'package:example3/theme/colors.dart';
import 'package:example3/constant/data_json.dart';
import 'package:example3/widgets/jurta_icons.dart';
import 'package:example3/widgets/photo_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            scrollDirection: Axis.vertical,
            children: List.generate(items.length, (index) {
              return PhotoItem(
                image: items[index]['image'],
                size: size,
                price: items[index]['price'],
                description: items[index]['description'],
                address: items[index]['address'],
                profileImg: items[index]['profileImg'],
                likes: items[index]['likes'],
              );
            }),
          ),
          HeaderHomePage(),
        ],
      ),
    );
  }
}

class RightPanel extends StatelessWidget {
  const RightPanel({
    Key? key,
    required this.size,
    required this.profileImg,
    required this.likes,
    this.color,
  }) : super(key: key);

  final profileImg;
  final likes;
  final color;

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: size.height,
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.4,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: black.withOpacity(0.1),
                    offset: Offset(0, 20),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          getProfile(profileImg),
                          SizedBox(height: 10),
                          getImageIcon(
                              JurtaIcons.callIcon, 35.0, color, "", 0.0),
                          SizedBox(height: 10),
                          getImageIcon(
                              JurtaIcons.heartIcon, 35.0, color, likes, 12.0),
                          SizedBox(height: 10),
                          getImageIcon(
                              JurtaIcons.messageIcon, 35.0, color, "", 0.0),
                          SizedBox(height: 10),
                          Stack(
                            children: <Widget>[
                              Positioned(
                                left: 8,
                                bottom: 11,
                                child: getImageIcon(
                                    JurtaIcons.shareIcon, 25.0, color, "", 0.0),
                              ),
                              getImageIcon(
                                  JurtaIcons.shareBgIcon, 35.0, color, "", 0.0),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getImageIcon(
    image,
    height,
    color,
    text,
    textSize,
  ) {
    return Column(
      children: <Widget>[
        Image(
          image: image,
          height: height,
          width: height,
          color: color,
        ),
        Text(
          text,
          style: TextStyle(fontSize: textSize, color: color),
        ),
      ],
    );
  }

  Widget getProfile(profileImg) {
    return Container(
      width: 55,
      height: 55,
      child: Stack(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(profileImg), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}

class LeftPanel extends StatelessWidget {
  final String price;
  final String description;
  final String address;
  final color;

  const LeftPanel({
    Key? key,
    required this.size,
    required this.price,
    required this.description,
    required this.address,
    this.color,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width * 0.78,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Записаться на показ", style: TextStyle(fontFamily: "HelveticaNeueCyr", fontSize: 12, fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
                primary: black.withOpacity(0.4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: Size(100, 30),
              ),
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontFamily: 'HelveticaNeueCyr',
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            description,
            style: TextStyle(
              fontFamily: 'HelveticaNeueCyr',
              color: color,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            address,
            style: TextStyle(
              fontFamily: 'HelveticaNeueCyr',
              color: color,
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(19, 30, 52, 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0)),
                ),
                child: Image.asset(
                  "assets/images/jurta_icon.png",
                  height: 20,
                  width: 60,
                ),
              ),
            ),
            Positioned(
              left: 100,
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Фильтр",
                      style: TextStyle(
                        color: white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.filter_alt_outlined,
                      color: white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
