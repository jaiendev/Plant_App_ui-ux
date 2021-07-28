import 'package:flutter/material.dart';
import 'package:plant_app_ui_ux/constrants.dart';
class TitleAndPrice extends StatelessWidget{
  final String title;
  final String country;
  final int price;
  TitleAndPrice({required this.title,
  required this.country, required this.price});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding/2
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding/2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title,style:TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: 5,
                ),
                Text(country,style: TextStyle(
                  color:kPrimaryColor,
                  fontSize: 12,
                ),)
              ],
            ),
          ),
          Spacer(),
          Container(
            alignment: Alignment.topRight,
            child: Text('\$${price}',style: TextStyle(
              color: kPrimaryColor,
              fontSize: 20,
            ),),
          )
        ],
      ),
    );
  }
}