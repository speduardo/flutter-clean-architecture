import 'package:flutter/material.dart';

class CustomPopularesCard extends StatefulWidget {
  @override
  _CustomPopularesCardState createState() => _CustomPopularesCardState();

  CustomPopularesCard();
}

class _CustomPopularesCardState extends State<CustomPopularesCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 170,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  width: 130,
                  image: AssetImage('assets/images/dyonnim-logo.jpg'),
                ),
                SizedBox(height: 10),
                Text('Dyonnim Lanches', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                SizedBox(height: 2),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 20,),
                    Icon(Icons.star, color: Colors.amber, size: 20,),
                    Icon(Icons.star_border, color: Colors.amber, size: 20,),
                    Icon(Icons.star_border, color: Colors.amber, size: 20,),
                    Icon(Icons.star_border, color: Colors.amber, size: 20,),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(width: 10),

          Container(
            height: 170,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  width: 130,
                  image: AssetImage('assets/images/dyonnim-logo.jpg'),
                ),
                SizedBox(height: 10),
                Text('Dyonnim Lanches', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                SizedBox(height: 2),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 20,),
                    Icon(Icons.star, color: Colors.amber, size: 20,),
                    Icon(Icons.star_border, color: Colors.amber, size: 20,),
                    Icon(Icons.star_border, color: Colors.amber, size: 20,),
                    Icon(Icons.star_border, color: Colors.amber, size: 20,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}