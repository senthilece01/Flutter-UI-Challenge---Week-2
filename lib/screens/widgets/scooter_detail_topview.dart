import 'package:flutter/material.dart';
import 'package:flutter_scooter/utils/utils_importer.dart';

class ScooterDetailTopView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(UtilsImporter().stringUtils.back),
            Image.asset(UtilsImporter().stringUtils.slider),
            Image.asset(UtilsImporter().stringUtils.up_arrow),
          ],
        ),
        SizedBox(height: 20),
        Image.asset(UtilsImporter().stringUtils.scooter,
            fit: BoxFit.fill),
      ],
    );
  }
}