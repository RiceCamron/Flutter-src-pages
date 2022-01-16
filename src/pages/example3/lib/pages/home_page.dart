import 'package:flutter/material.dart';

import 'package:example3/theme/colors.dart';
import 'package:example3/constant/data_json.dart';
import 'package:example3/widgets/jurta_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: black,
        ),
        child: SafeArea(
          child: Container(
            width: size.width,
            height: 26,
            color: black,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 25,
                right: 20,
                left: 15,
                bottom: 10,
              ),
              child: Column(
                children: [
                  HeaderHomePage(),
                  Flexible(
                    child: Row(
                      children: <Widget>[
                        LeftPanel(size: size),
                        Expanded(
                          child: Container(
                            height: size.height,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: size.height * 0.4,
                                ),
                                Stack(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Column(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  getProfile(),
                                                  SizedBox(height: 10),
                                                  getImageIcon(
                                                      JurtaIcons.callIcon,
                                                      35.0,
                                                      white,
                                                      "",
                                                      0.0),
                                                  SizedBox(height: 10),
                                                  getImageIcon(
                                                      JurtaIcons.heartIcon,
                                                      35.0,
                                                      white,
                                                      "46",
                                                      12.0),
                                                  SizedBox(height: 10),
                                                  getImageIcon(
                                                      JurtaIcons
                                                          .messageIcon,
                                                      35.0,
                                                      white,
                                                      "",
                                                      0.0),
                                                  SizedBox(height: 10),
                                                  Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                        left: 8,
                                                        bottom: 11,
                                                        child: getImageIcon(
                                                            JurtaIcons
                                                                .shareIcon,
                                                            25.0,
                                                            white,
                                                            "",
                                                            0.0),
                                                      ),
                                                      getImageIcon(
                                                          JurtaIcons
                                                              .shareBgIcon,
                                                          35.0,
                                                          white,
                                                          "",
                                                          0.0),
                                                    ],
                                                  ),
                                                  Container(
                                      height: 80,
                                      width: 200,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text("Подробнее"),
                                        style: ElevatedButton.styleFrom(
                                            primary: btnColor),
                                      ),
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
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
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
          style: TextStyle(fontSize: textSize, color: white),
        ),
      ],
    );
  }

  Widget getProfile() {
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
                  image: NetworkImage(items[0]['profileImg']),
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}

class LeftPanel extends StatelessWidget {
  const LeftPanel({
    Key? key,
    required this.size,
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
          Text(
            items[0]['name'],
            style: TextStyle(
              fontFamily: 'HelveticaNeueCyr',
              fontWeight: FontWeight.bold,
              color: white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            items[0]['caption'],
            style: TextStyle(
              fontFamily: 'HelveticaNeueCyr',
              color: white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            items[0]['songName'],
            style: TextStyle(
              fontFamily: 'HelveticaNeueCyr',
              color: white,
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Image.asset(
            "assets/images/jurta_icon.png",
            height: 20,
            width: 60,
          ),
        ),
        Container(
          child: Stack(
            children: [
              Text(
                "Фильтр",
                style: TextStyle(
                  color: white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
