import 'package:flutter/material.dart';
import 'package:example3/theme/colors.dart';

class UploadIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 50,
        height: 35,
        child: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 2,
                child: Container(
                  alignment: Alignment.center,
                  width: 48,
                  height: 35,
                  decoration: BoxDecoration(
                    color: btnColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.add),
                ),
              ),
              Positioned(
                left: 6,
                child: Container(
                  alignment: Alignment.center,
                  width: 40,
                  height: 35,
                  decoration: BoxDecoration(
                    color: darkBlue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.add, color: white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
