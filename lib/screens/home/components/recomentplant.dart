import 'package:flutter/material.dart';
import 'package:plant_app_ui_ux/screens/details/components/details_screen.dart';

import '../../../constrants.dart';
class RecomentPlant extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:<Widget> [
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country:"Rusia" ,
            price: 440,
            onpress: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                  )
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_2.png",
            title: "Samantha",
            country:"Rusia" ,
            price: 440,
            onpress: (){
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  )
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country:"Rusia" ,
            price: 440,
            onpress: (){
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  )
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country:"Rusia" ,
            price: 440,
            onpress: (){
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  )
              );
            },
          ),
        ],
      ),
    );
  }
}
class RecomendPlantCard extends StatelessWidget{
  final String image,title,country;
  final int price;
  final Function onpress;
  RecomendPlantCard({required this.image,required this.title
    ,required this.country, required this.price, required this.onpress});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding*2.5
      ),
      width: size.width*0.4,
      child: GestureDetector(
        onTap: ()=>onpress(),
        child: Container(
          child: Column(
            children: <Widget>[
              Image.asset(image),
              Container(
                padding: EdgeInsets.all(kDefaultPadding/2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,10),
                          blurRadius: 50,
                          color:kPrimaryColor.withOpacity(0.23)
                      )
                    ]
                ),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('$title'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 12,
                            )),
                        Text('$country'.toUpperCase(),
                            style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                                fontSize: 12
                            )
                        )
                      ],
                    ),
                    Spacer(),
                    Text(
                      '\$$price',
                      style: Theme.of(context).textTheme.button!
                          .copyWith(color: kPrimaryColor),
                    )],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
