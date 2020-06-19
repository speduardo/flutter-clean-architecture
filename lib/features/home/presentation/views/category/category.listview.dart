import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListView extends StatefulWidget {
  @override
  _CategoryListViewState createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  List<Map> categories = [
    {
      'name': 'Lanchonete',
      'iconPath': 'assets/images/lanchonete.png',
      'bannerPath': 'assets/images/banner-lanchonete.jpg',
      'color': 600
    },
    {
      'name': 'Farmácia',
      'iconPath': 'assets/images/syringe.png',
      'bannerPath': 'assets/images/banner-farmacia.jpg',
      'color': 600
    },
    {
      'name': 'Restaurante',
      'iconPath': 'assets/images/food.png',
      'bannerPath': 'assets/images/banner-restaurante.jpg',
      'color': 600
    },
    {
      'name': 'Supermercado',
      'iconPath': 'assets/images/shopping-cart.png',
      'bannerPath': 'assets/images/banner-supermercado.jpg',
      'color': 600
    },
    {
      'name': 'Bar',
      'iconPath': 'assets/images/beer.png',
      'bannerPath': 'assets/images/banner-bar.jpg',
      'color': 600
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
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
              title: Text('Categorias', style: TextStyle(color: Colors.white),),
            ),
          ),
         /* SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildListDelegate([
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
            ]),
          ),*/
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 80,
                  alignment: Alignment.center,
                  color: Colors.blue[100 * (index % 9)],
                  child: ListTile(
                    onTap: () {
                      print('onTap categoria $index');
                      Get.toNamed("/categoriaDetailView?name="+categories[index]['name']);
                    },
                    leading: Image(image: AssetImage(categories[index]['iconPath']),),
                    title: Text(categories[index]['name']),
                  ),
                );
              },
              childCount: categories.length,
            ),
          ),
          /*SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 30,
            ),
            // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            //   maxCrossAxisExtent: 200.0,
            //   mainAxisSpacing: 10.0,
            //   crossAxisSpacing: 10.0,
            //   childAspectRatio: 4.0,
            // ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 2.0,
            ),
          ),*/
          /*SliverToBoxAdapter(
            child: Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(8.0),
              child: Text('Grid Header', style: TextStyle(fontSize: 24)),
            ),
          ),*/
          /*SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
              Container(color: Colors.red),
              Container(color: Colors.green),
              Container(color: Colors.blue),
            ],
          ),*/
          /*SliverGrid.extent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: <Widget>[
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
              Container(color: Colors.pink),
              Container(color: Colors.indigo),
              Container(color: Colors.orange),
            ],
          ),*/
        ],
      ),
    );
  }
}
