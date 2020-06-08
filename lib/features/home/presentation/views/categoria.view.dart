import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/configurations.dart';

class CategoriaView extends StatefulWidget {
  CategoriaView({Key key}) : super(key: key);

  @override
  _CategoriaViewState createState() => _CategoriaViewState();
}

class _CategoriaViewState extends State<CategoriaView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Categorias'),
      ),
      body: ListView.builder(
          //padding: const EdgeInsets.only(top: 8),
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return
              /*Container(
              height: 50,
              color: Colors.amber[categories[index]['color']],
              child: Center(child: Text('Entry ${categories[index]['bannerPath']}')),
            )*/
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //padding: EdgeInsets.all(10),
                  //margin: EdgeInsets.only(left: 10),
                    height: 80,
                    //width: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      //boxShadow: shadowList,
                      borderRadius: BorderRadius.circular(0),
                      image: DecorationImage(
                        colorFilter:
                        ColorFilter.mode(Colors.black.withOpacity(0.8),
                            BlendMode.dstATop),
                        image: AssetImage(categories[index]['bannerPath']),
                        fit: BoxFit.cover,

                      ),
                    ),
                    child: Center( child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Icon(horizontal_menu[index]['icon'], color: Colors.white, size: 28,),
                        Text(categories[index]['name'], style: TextStyle(fontSize: 24, color: Colors.white),)
                      ],))
                ),
              ],
            );
          }
      ),
    );
  }
}