import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/configurations.dart';

class GuiaDetailView extends StatefulWidget {
  GuiaDetailView({Key key}) : super(key: key);

  @override
  _GuiaDetailViewState createState() => _GuiaDetailViewState();
}

class _GuiaDetailViewState extends State<GuiaDetailView> {
  bool isFavorito = false;
  List<Map> fidelidade = [
    {'medalha': true},
    {'medalha': true},
    {'medalha': false},
    {'medalha': false},
    {'medalha': false},
    {'medalha': false},
    {'medalha': false},
    {'medalha': false},
    {'medalha': false},
    {'medalha': false},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(estabelcimentos[1]['name']),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.monetization_on)),
              Tab(icon: Icon(Icons.image)),
              Tab(icon: Icon(Icons.info)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    //margin: EdgeInsets.only(left: 10),
                    height: 150,
                    width: 420,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      //boxShadow: shadowList,
                      //borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.dstATop),
                        image: AssetImage(estabelcimentos[1]['logoPath']),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.favorite,
                            size: 30,
                            color: isFavorito ? Colors.red : Colors.white,
                          ),
                          tooltip: 'Favoritos',
                          onPressed: () {
                            setState(() {
                              //print('Favoritado');
                              isFavorito = !isFavorito;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.share,
                            size: 30,
                            color: Colors.white,
                          ),
                          tooltip: 'Compartilhar',
                          onPressed: () {
                            setState(() {
                              //print('Favoritado');
                              //isFavorito = !isFavorito;
                            });
                          },
                        ),
                        //Icon(Icons.favorite_border, color: Colors.white, size: 30,),
                      ],
                    ),
                  ),
                  Container(
                    child: RatingBar(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        estabelcimentos[1]['name'],
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(estabelcimentos[1]['telefone']),
                      Text(estabelcimentos[1]['endereco']),
                    ],
                  ),

                  Card(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.adjust),
                          title: Text('Fidelidade'),
                          //subtitle: Text('Usuário do guia têm 10% de desconto na primeira compra.'),
                        ),
                        Container(
                          height: 60,
                          color: Colors.white,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: fidelidade.length,
                              itemBuilder: (context, index) {
                                return IconButton(
                                  icon: Image(
                                      color: fidelidade[index]['medalha']
                                          ? Colors.deepOrange
                                          : Colors.grey,
                                      image: AssetImage('assets/images/medal.png')),
                                  iconSize: 40,
                                  tooltip: 'Increase volume by 10',
                                  onPressed: () {
                                    setState(() {
                                      fidelidade[index]['medalha'] = !fidelidade[index]['medalha'];
                                    });
                                  },
                                );
                              }),
                        ),
                        /*ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Saiba mais'),
                          onPressed: () { */ /* ... */ /* },
                        ),
                      ],
                    ),*/
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ListView(
              padding: const EdgeInsets.all(8),
              children: [
                Card(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('Promoções'),
                        subtitle: Text(
                            'Usuário do guia têm 10% de desconto na primeira compra.'),
                      ),
                      Image(
                        width: 80,
                        image: AssetImage('assets/images/coupon.png'),
                      ),
                      //Text('Basta apresentar este cupom e informar seu CPF, para garantir seu desconto.',),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Saiba mais'),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            ListView(
            padding: const EdgeInsets.all(8),
            children: [
                    Container(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Image(
                        width: 250,
                        image: AssetImage('assets/images/dyonnim-image1.jpg'),
                      ),
                        SizedBox(height: 10,),
                      Image(
                        width: 250,
                        image: AssetImage('assets/images/dyonnim-image2.jpg'),
                      ),
                    ],),),
                ],),

            Container(
              //margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sobre a empresa',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                      'Empresa no municipio a mais de 5 anos, levando um serviço de qualidade'),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
