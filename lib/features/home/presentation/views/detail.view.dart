import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/widgets/custom_review_card.dart';

class DetailView extends StatefulWidget {
  DetailView({Key key}) : super(key: key);

  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              forceElevated: innerBoxIsScrolled,
              expandedHeight: 300.0,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Collapsing Toolbar",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 16.0,
                    )),
                background: Image(
                  image: AssetImage('assets/images/dyonnim-logo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                //height: _screenSize.height * 0.2,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Text(
                              'Dyonnim Lanches',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
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
                                  Text(
                                    '4',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //SizedBox(height: 20,),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Melhores lanches da cidade, com otimo atendimento, local climatizado para melhor aende-lo.',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),

                    Container(
                      height: 180,
                      //width: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/dyonnim-logo.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/dyonnim-logo.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ListTile(
                            leading: Icon(Icons.stars, color: Colors.black),
                            title: Text('Informações'),
                            //subtitle: Text('Ordenado pelos mais próximos'),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            color: Colors.white,
                            child: Text(
                                'Segunda a Sexta das 20:00 as 23:00 horas e Sabados e Domingos das 18:00 as 23:00 horas'),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            color: Colors.white,
                            child: Text(
                                'Av. São Felipe (próximo Polícia Militar) - Thálita - Acreúna-GO'),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            color: Colors.white,
                            child: Text('(64) 9 9945-1151'),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ListTile(
                            leading: Icon(Icons.featured_play_list,
                                color: Colors.black),
                            title: Text('Em Destaque'),
                            //subtitle: Text('Ordenado pelos mais próximos'),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ListTile(
                            leading:
                                Icon(Icons.recent_actors, color: Colors.black),
                            title: Text('O que eles falaram ?'),
                            //subtitle: Text('Ordenado pelos mais próximos'),
                          ),
                          Container(
                            height: 300,
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              primary: false,
                              children: [
                                CustomReviewCard(),
                                CustomReviewCard(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
