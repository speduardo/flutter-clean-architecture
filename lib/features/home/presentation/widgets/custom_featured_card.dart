import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFeaturedCard extends StatefulWidget {

  @override
  _CustomFeaturedCardState createState() => _CustomFeaturedCardState();

  final String title;
  final String description;
  final String image;
  final GestureTapCallback onTap;
  final String _defaultImage = 'assets/images/banner-lanchonete.jpg';

  CustomFeaturedCard({@required this.title, @required this.description, @required this.image, this.onTap});

}

class _CustomFeaturedCardState extends State<CustomFeaturedCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)),
              image: DecorationImage(
                image: AssetImage(
                    '${widget.image != null ? widget.image : widget._defaultImage}'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding:
            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 110,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)),
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
                      Text(
                        '${widget.title}',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '${widget.description}',
                        style: TextStyle(color: Colors.grey[600]),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                      ),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.amber,
                            size: 20,
                          ),
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
                        child: Icon(
                          Icons.directions,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {});
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
      ),
      onTap: widget.onTap,
    );
  }
}
