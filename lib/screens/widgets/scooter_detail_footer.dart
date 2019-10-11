import 'package:flutter/material.dart';
import 'package:flutter_scooter/utils/utils_importer.dart';

class ScooterDetailFooter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children : [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              UtilsImporter().stringUtils.x_scooter,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontFamily: UtilsImporter().stringUtils.roboto,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(height: 15),
        Text(
          UtilsImporter().stringUtils.scooter_descrip,
          style: TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontFamily: UtilsImporter().stringUtils.roboto,
              fontWeight: FontWeight.w400),
        ),
      ]
    );
  }
}