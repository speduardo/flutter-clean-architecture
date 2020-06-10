import 'package:flutter/material.dart';

class CustomCategoriaButton extends StatefulWidget {
  @override
  _CustomCategoriaButtonState createState() => _CustomCategoriaButtonState();

  CustomCategoriaButton();
}

class _CustomCategoriaButtonState extends State<CustomCategoriaButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.deepOrange,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: Colors.red)
            ),
            child: Image(
              image: AssetImage('assets/images/lanchonete.png'),
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {});
            },
          ),
          SizedBox(height: 5),
          Text(
            'Lanchonete',
            style: TextStyle(color: Colors.grey[600]),
            overflow: TextOverflow.fade,
            maxLines: 1,
            softWrap: false,
          ),
        ],
      ),

    );
  }
}