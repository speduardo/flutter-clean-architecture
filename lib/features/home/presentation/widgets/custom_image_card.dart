import 'package:flutter/material.dart';

class CustomImageCard extends StatefulWidget {
  @override
  _CustomImageCardState createState() => _CustomImageCardState();

  CustomImageCard();
}

class _CustomImageCardState extends State<CustomImageCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 180,
      width: 130,
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //padding: EdgeInsets.symmetric(horizontal: 10),
            height: 120,
            //width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              image: DecorationImage(
                image: AssetImage('assets/images/dyonnim-logo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Dyonnim Lanches',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            overflow: TextOverflow.fade,
            maxLines: 1,
            softWrap: false,
          ),
          SizedBox(height: 2),
          Text(
            'Melhores lanches da cidade',
            style: TextStyle(fontSize: 14, color: Colors.grey[600],),
            overflow: TextOverflow.fade,
            maxLines: 1,
            softWrap: false,
          ),
        ],
      ),
    );
  }
}