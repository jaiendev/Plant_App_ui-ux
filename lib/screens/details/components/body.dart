import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui_ux/constrants.dart';
import 'package:plant_app_ui_ux/screens/details/components/icon_card.dart';
import 'package:plant_app_ui_ux/screens/details/components/image_and_icons.dart';
import 'package:plant_app_ui_ux/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Column(
      children: <Widget>[
        ImageAndIcons(size: size,),
        TitleAndPrice(title: "Angelica", country:"Russia", price: 440),
        Row(
          children: <Widget>[
            SizedBox(
                width: size.width/2,
                height: 77,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30)
                    )
                  ),
                  color: kPrimaryColor,
                  onPressed: (){},
                  child: Text('Buy Now',style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),),
                )
            ),
            Expanded(child: FlatButton(
              onPressed: (){},
              child: Text('Description'),
            ))
          ],
        )
      ],
    );
  }
}
