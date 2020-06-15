import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/navigationtabs.model.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/configurations.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/home.controller.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/widgets/custom_categoria_button.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/widgets/custom_destaque_card.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/widgets/custom_fab_button.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/widgets/custom_image_card.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/widgets/custom_populares_card.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/widgets/custom_review_card.dart';
import 'package:get/get.dart';
import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/getflutter.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  int _currentIndex = 0;

  bool _isTapped = false;
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  List<NavigationTabs> _navigationTabs = [
    NavigationTabs(title: "Guia", icon: Icons.store, index: 0),
    NavigationTabs(title: "Anuncie Aqui", icon: Icons.announcement, index: 1),
    NavigationTabs(title: "Fidelidade", icon: Icons.star, index: 2),
    NavigationTabs(
        title: "Sobre Nós", icon: Icons.supervised_user_circle, index: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia Comercial'),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorito'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                      style: BorderStyle.solid, color: Colors.grey[300]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Pesquisa por estabelecimentos',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    //Icon(Icons.settings)
                  ],
                ),
              ),

              ListTile(
                leading: Icon(Icons.stars, color: Colors.black),
                title: Text('Em destaque'),
                subtitle: Text('Ordenado pelos mais próximos'),
              ),

              Container(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomDestaqueCard(),
                    CustomDestaqueCard(),
                  ],
                ),
              ),

              ListTile(
                leading: Icon(Icons.trending_up, color: Colors.black),
                title: Text('Mais vistos da semana'),
                subtitle: Text('Click duplo para detalhar'),
              ),

              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomImageCard(),
                    CustomImageCard(),
                    CustomImageCard(),
                    CustomImageCard(),
                  ],
                ),
              ),

              ListTile(
                leading: Icon(Icons.category, color: Colors.black),
                title: Text('Categorias'),
                //subtitle: Text('Click duplo para detalhar'),
              ),

              Container(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomCategoriaButton(),
                    CustomCategoriaButton(),
                    CustomCategoriaButton(),
                    CustomCategoriaButton(),
                  ],
                ),
              ),

              ListTile(
                leading: Icon(Icons.star, color: Colors.black),
                title: Text('Populares'),
                //subtitle: Text('Click duplo para detalhar'),
              ),

              Container(
                height: 400,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  primary: false,
                  children: [
                    CustomPopularesCard(),
                    CustomPopularesCard(),
                  ],
                ),
              ),

              ListTile(
                leading: Icon(Icons.recent_actors, color: Colors.black),
                title: Text('Comentários recentes'),
                //subtitle: Text('Click duplo para detalhar'),
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
      ),
    );
  }
}
