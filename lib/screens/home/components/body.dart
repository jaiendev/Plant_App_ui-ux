import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui_ux/constrants.dart';
import 'package:plant_app_ui_ux/screens/home/components/feature_plant.dart';
import 'package:plant_app_ui_ux/screens/home/components/header.dart';
import 'package:plant_app_ui_ux/screens/home/components/recomentplant.dart';
import 'package:plant_app_ui_ux/screens/home/components/title_with_button_more.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
            Header(size),
            TitleWithButton(title: "Recomended", onpress: (){}),
            RecomentPlant(),
            TitleWithButton(title: "Featured", onpress: (){}),
            FeaturePlant(),
            SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

