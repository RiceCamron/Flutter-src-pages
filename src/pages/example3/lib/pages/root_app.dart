import 'package:flutter/material.dart';

import 'package:example3/pages/home_page.dart';
import 'package:example3/theme/colors.dart';
import 'package:example3/widgets/jurta_icons.dart';
import 'package:example3/widgets/upload_icon.dart';
import 'package:example3/pages/root_app.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: <Widget>[
        HomePage(),
        Center(
          child: Text(
            'Поиск',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ),
        Center(
          child: Text(
            'Upload',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ),
        Center(
          child: Text(
            'Избранное',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: black,
            ),
          ),
        ),
        Center(
          child: Text(
            'Меню',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: darkBlue,
            ),
          ),
        ),
      ],
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    List bottomItems = [
      {"icon": Icons.home_outlined, "label": "ГЛАВНАЯ", "isIcon": true},
      {"icon": Icons.search, "label": "ПОИСК", "isIcon": true},
      {"icon": "", "label": "", "isIcon": false},
      {
        "icon": Icons.favorite_outline_sharp,
        "label": "ИЗБРАННОЕ",
        "isIcon": true
      },
      {"icon": Icons.menu, "label": "МЕНЮ", "isIcon": true}
    ];

    return Container(
      width: double.infinity,
      height: 68,
      decoration: BoxDecoration(
        color: white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5, (index) {
            return bottomItems[index]['isIcon']
                ? InkWell(
                    onTap: () {
                      selectedIndex(index);
                    },
                    child: Column(
                      children: <Widget>[
                        Icon(
                          bottomItems[index]['icon'],
                          color: darkBlue,
                          size: 35,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          bottomItems[index]['label'],
                          style: TextStyle(
                            fontFamily: 'HelveticaNeueCyr',
                            color: darkBlue,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                : InkWell(
                    onTap: () {
                      selectedIndex(index);
                    },
                    child: UploadIcon());
          }),
        ),
      ),
    );
  }

  selectedIndex(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
