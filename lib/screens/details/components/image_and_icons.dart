import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui_ux/screens/details/components/icon_card.dart';

import '../../../constrants.dart';
class ImageAndIcons extends StatelessWidget{
  Size size;
  ImageAndIcons({required this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: size.height*0.8,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding*3),
              child: Column(
                children: <Widget>[
                  Align(
                    child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed:(){
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                  ),
                  Spacer(),
                  IconCard(icon: 'assets/icons/sun.svg', onpress: (){}),
                  IconCard(icon: 'assets/icons/icon_2.svg', onpress: (){}),
                  IconCard(icon: 'assets/icons/icon_3.svg', onpress: (){}),
                  IconCard(icon: 'assets/icons/icon_4.svg', onpress: (){}),

                ],
              ),
            ),
          ),
          Container(
            height: size.height*0.8,
            width: size.width*0.72,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 60,
                    color:kPrimaryColor.withOpacity(0.4),
                  )
                ],
                image: DecorationImage(
                  alignment: Alignment.topLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"),
                )
            ),
          )
        ],
      ),
    );
  }
}