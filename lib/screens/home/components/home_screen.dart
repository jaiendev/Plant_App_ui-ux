import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui_ux/components/my_bottom_nav.dart';
import 'package:plant_app_ui_ux/constrants.dart';
import 'package:plant_app_ui_ux/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNav(),
    );
  }
  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed:(){

        },
      ),
    );
  }
}

