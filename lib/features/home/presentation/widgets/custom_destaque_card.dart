import 'package:flutter/material.dart';

class CustomDestaqueCard extends StatefulWidget {
  @override
  _CustomDestaqueCardState createState() => _CustomDestaqueCardState();

  CustomDestaqueCard();
}

class _CustomDestaqueCardState extends State<CustomDestaqueCard> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 150,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
            image: DecorationImage(
              image: AssetImage('assets/images/dyonnim-logo.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 110,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dyonnim Lanches', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5),
                    Text(
                      'Venham se deliciar com os melhores lanches da cidade',
                      style: TextStyle(color: Colors.grey[600]),
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                    ),
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
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    RaisedButton(
                      color: Colors.deepOrange,
                      child: Icon(Icons.directions, color: Colors.white,),
                      onPressed: () {
                        setState(() {
                        });
                      },
                    ),
                    Text(
                      '100 m',
                      style: TextStyle(color: Colors.grey[600]),
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}