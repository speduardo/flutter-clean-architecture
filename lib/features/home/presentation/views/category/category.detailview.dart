import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryDetatilView extends StatefulWidget {

  @override
  _CategoryDetatilViewState createState() => _CategoryDetatilViewState();
}

class _CategoryDetatilViewState extends State<CategoryDetatilView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed("/categoriaFormView?name="+Get.parameters['name']);
        },
        child: Icon(Icons.edit),
        backgroundColor: Colors.blue,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //pinned: true,
            floating: true,
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.blue.shade900,
                    Colors.lightBlue
                  ]),
                ),
              ),
              title: Text('Detalhes', style: TextStyle(color: Colors.white),),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildListDelegate([
              Container(color: Colors.red, 
                child: Text('${Get.parameters['name']}'),),
            ]),
          ),
        ],
      ),
    );
  }
}
