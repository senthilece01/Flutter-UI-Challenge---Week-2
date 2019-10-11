import 'package:flutter/material.dart';
import 'package:flutter_scooter/utils/utils_importer.dart';

class ScooterDetailInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        createScooterDetails(
            UtilsImporter().stringUtils.kilometer,
            UtilsImporter().stringUtils.kmh,
            UtilsImporter().stringUtils.km_unit,
            UtilsImporter().stringUtils.max_speed),
        createScooterDetails(
            UtilsImporter().stringUtils.watt,
            UtilsImporter().stringUtils.watt_value,
            UtilsImporter().stringUtils.watt_unit,
            UtilsImporter().stringUtils.motor),
        createScooterDetails(
            UtilsImporter().stringUtils.battery,
            UtilsImporter().stringUtils.battery_value,
            UtilsImporter().stringUtils.battery_unit,
            UtilsImporter().stringUtils.battery_label),
      ],
    );
  }

  Widget createScooterDetails(String img_name, String value, String unit, String description) {
    return Column(
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: UtilsImporter().colorUtils.primarycolor),
          child: Center(
            child: Image.asset(img_name, width: 30, height: 30),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: UtilsImporter().stringUtils.roboto,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              unit,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontFamily: UtilsImporter().stringUtils.roboto,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(
              color: UtilsImporter().colorUtils.secondarycolor,
              fontSize: 14.0,
              fontFamily: UtilsImporter().stringUtils.roboto,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}