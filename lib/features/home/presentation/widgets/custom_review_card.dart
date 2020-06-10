import 'package:flutter/material.dart';

class CustomReviewCard extends StatefulWidget {
  @override
  _CustomReviewCardState createState() => _CustomReviewCardState();

  CustomReviewCard();
}

class _CustomReviewCardState extends State<CustomReviewCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: CircleAvatar(
                  backgroundColor: Colors.lightBlue.shade50,
                  minRadius: 30.0,
                  child: Text('ED'),
                ),
              ),

              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Eduardo Pereira', style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5),
                    Text('Bom atendimento', style: TextStyle(color: Colors.grey[500], fontSize: 12),),
                  ],
                ),
              ),

              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('4', style: TextStyle(fontSize: 14, color: Colors.white),),
                      Icon(Icons.star_border, color: Colors.white, size: 16,),
                    ],
                  ),
                ),
              )

            ],
          ),
          SizedBox(height: 10),
          Text('Lanche muito saboroso, otimo atendimento, recomendo o estabelecimento.', style: TextStyle(fontSize: 14),),
        ],
      ),
    );
  }
}