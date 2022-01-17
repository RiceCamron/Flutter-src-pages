import 'package:example3/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:example3/constant/data_json.dart';
import 'package:example3/pages/home_page.dart';

class PhotoItem extends StatefulWidget {
  const PhotoItem({
    @required this.profileImg,
    @required this.image,
    @required this.price,
    @required this.description,
    @required this.address,
    @required this.size,
    this.likes,
  });
  final profileImg;
  final image;
  final price;
  final description;
  final address;
  final likes;

  final size;

  @override
  _PhotoItemState createState() => _PhotoItemState();
}

class _PhotoItemState extends State<PhotoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.network(widget.image),
            ),
          ),
          Padding(
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
                      LeftPanel(
                        size: widget.size,
                        price: widget.price,
                        description: widget.description,
                        address: widget.address,
                        color: white,
                      ),
                      RightPanel(
                        size: widget.size,
                        profileImg: widget.profileImg,
                        likes: widget.likes,
                        color: white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
