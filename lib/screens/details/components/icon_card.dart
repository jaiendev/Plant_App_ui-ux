import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constrants.dart';
class IconCard extends StatelessWidget{
  final String icon;
  final Function onpress;
  IconCard({required this.icon, required this.onpress});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height*0.02),
      padding: EdgeInsets.all(kDefaultPadding/2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: Offset(0,10),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22)
            ),
            BoxShadow(
                offset: Offset(-15,-15),
                blurRadius: 20,
                color: Colors.white
            )
          ]
      ),
      child: SvgPicture.asset(icon),
    );
  }
}