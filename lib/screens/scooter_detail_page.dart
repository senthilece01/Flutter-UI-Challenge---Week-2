import 'package:flutter/material.dart';
import 'package:flutter_scooter/screens/widgets/scooter_detail_footer.dart';
import 'package:flutter_scooter/screens/widgets/scooter_detail_info.dart';
import 'package:flutter_scooter/screens/widgets/scooter_detail_topview.dart';
import 'package:flutter_scooter/utils/string_utils.dart';
import 'package:flutter_scooter/utils/utils_importer.dart';

class ScooterDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ScooterDetailPageState();
  }
}

class ScooterDetailPageState extends State<ScooterDetailPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: UtilsImporter().colorUtils.darkBlackColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(UtilsImporter().stringUtils.bg_img),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // 1
                  ScooterDetailTopView(),

                  SizedBox(height: 20),

                  // 2
                  ScooterDetailInfo(),

                  SizedBox(height: 30),

                  // 3
                  ScooterDetailFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
