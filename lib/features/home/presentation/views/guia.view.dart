import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/configurations.dart';

class GuiaView extends StatefulWidget {
  GuiaView({Key key}) : super(key: key);

  @override
  _GuiaViewState createState() => _GuiaViewState();
}

class _GuiaViewState extends State<GuiaView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Guia - Lanchonetes'),
      ),
      body: ListView.builder(
          //padding: const EdgeInsets.only(top: 8),
          itemCount: estabelcimentos.length,
          itemBuilder: (BuildContext context, int index) {
            return
            Row(
              children: [
                Container(
                  //padding: EdgeInsets.only(right: 20),
                  margin: EdgeInsets.only(right: 10, bottom: 5),
                  height: 80,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    //boxShadow: shadowList,
                    borderRadius: BorderRadius.circular(0),
                    image: DecorationImage(
                      colorFilter:
                      ColorFilter.mode(Colors.black.withOpacity(0.8),
                          BlendMode.dstATop),
                      image: AssetImage(estabelcimentos[index]['logoPath']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(estabelcimentos[index]['name'],
                    style: TextStyle(fontSize: 20, color: Colors.black),),

                  Text(estabelcimentos[index]['telefone'],
                    style: TextStyle(fontSize: 14, color: Colors.black),),

                  Text(estabelcimentos[index]['endereco'],
                    style: TextStyle(fontSize: 10, color: Colors.black),),
                ],
                ),
              ],
            );
          }
      ),
    );
  }
}