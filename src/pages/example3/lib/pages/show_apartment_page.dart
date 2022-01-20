import 'package:flutter/material.dart';
import 'package:example3/theme/colors.dart';

class ShowApartment extends StatefulWidget {
  const ShowApartment({Key? key}) : super(key: key);

  @override
  _ShowApartmentState createState() => _ShowApartmentState();
}

class _ShowApartmentState extends State<ShowApartment> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'У ВАС СКОРО ПОКАЗ',
                  style: TextStyle(
                      color: darkBlue,
                      fontFamily: "HelveticaNeueCyr",
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Row(
                  children: [
                    ImageIcon(
                      image: Image.asset(
                        'assets/images/icons/clock.png',
                        color: darkBlue,
                      ),
                      text: 'До показа: 10 мин',
                    ),
                    ImageIcon(
                      image: Image.asset(
                        'assets/images/icons/locator_icon.png',
                        color: darkBlue,
                      ),
                      text: 'Район Есиль, ул. Мангилик Ел, 17',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(248, 248, 248, 1),
                ),
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: Image.network(
                            'https://s3-alpha-sig.figma.com/img/57c1/ad19/6302eeda189d8ba2042a950f3ccd03fd?Expires=1643587200&Signature=YJuJn97-rWb5lMHCLPM1TzzRBQVa--uA0GDvepdcBLkUP6aeQS2wYGhEEQVYhmUCBI1pClabBUNX1tczZrVusjqPOlTkaMpqPwo52Nlzhx8lHsqR4qPjltKUbrMyYvXkXeoFGgXd0yvtWsMHYB8ZxZMN6k8M2ga~wnPsuqtUUu75OeVA88GKxFcVgGD-ykaLRjQN2wuq63dYj95PKqf-WsjWyPlL4ipYarw6dTdqTeosCIHhfnU1y8z~f-NJgyE~MwoKcRpBocZRjsKSLe3EXF0pvkiInTS9HGvzOOOSu5zPIB7XHEThvTHR9yJ5QngJ8mYoiq0wqkAGlMFvGxVVCA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                            height: 69,
                            width: 69,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Нургалиева Арайлым",
                                style: TextStyle(
                                  fontFamily: "HelveticaNeueCyr",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 153, 41, 0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      "Лидер новостроек",
                                      style: TextStyle(
                                        fontFamily: "HelveticaNeueCyr",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8,
                                        color: Color.fromRGBO(255, 144, 0, 1),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(39, 51, 59, 0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: EdgeInsets.all(6),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/icons/screw.png',
                                          color: darkBlue,
                                          height: 12,
                                          width: 12,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "Ожидает подтверждения",
                                          style: TextStyle(
                                            fontFamily: "HelveticaNeueCyr",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 8,
                                            color: darkBlue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/icons/rating_bg_icon.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                  Positioned(
                                    top: 2,
                                    left: 4.5,
                                    child: Image.asset(
                                      'assets/images/icons/rating_star_icon.png',
                                      height: 11,
                                      width: 11,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "4.6",
                                style: TextStyle(
                                  color: darkBlue,
                                  fontFamily: "HelveticaNeueCyr",
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: darkBlue,
                      ),
                      // padding: EdgeInsets.all(22),
                      height: 40,
                      width: 160,
                      alignment: Alignment.center,
                      child: Text(
                        "ОТКЛОНИТЬ",
                        style: TextStyle(
                          color: white,
                          fontFamily: "HelveticaNeueCyr",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color.fromRGBO(0, 202, 191, 1),
                      ),
                      // padding: EdgeInsets.all(22),
                      height: 40,
                      width: 160,
                      alignment: Alignment.center,
                      child: Text(
                        "ПОДТВЕРЖДАЮ",
                        style: TextStyle(
                          color: white,
                          fontFamily: "HelveticaNeueCyr",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ImageIcon extends StatelessWidget {
  const ImageIcon({
    Key? key,
    required this.image,
    this.text,
  }) : super(key: key);

  final Image image;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 245, 245, 1),
              borderRadius: BorderRadius.circular(6),
            ),
            child: image,
            padding: EdgeInsets.all(4),
          ),
          Container(
            padding: EdgeInsets.all(6),
            child: Flexible(
              child: Text(
                text,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: "HelveticaNeueCyr",
                  fontWeight: FontWeight.bold,
                  fontSize: 11.6,
                  color: darkBlue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
