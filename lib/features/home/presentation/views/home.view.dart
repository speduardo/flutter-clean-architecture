import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/navigationtabs.model.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/home.controller.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/widgets/custom_fab_button.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  bool _isTapped = false;

  List<NavigationTabs> _navigationTabs = [
    NavigationTabs(title: "Guia", icon: Icons.store, index: 0),
    NavigationTabs(title: "Anuncie Aqui", icon: Icons.announcement, index: 1),
    NavigationTabs(title: "Fidelidade", icon: Icons.star, index: 2),
    NavigationTabs(title: "Sobre Nós", icon: Icons.supervised_user_circle, index: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            extended: _isTapped,
            leading: Padding(
              padding: EdgeInsets.only(bottom: 10, top: 20),
              child: Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: CustomFabButton( onPressed: (isTapped) {
                  setState(() {
                    _isTapped = isTapped;
                  });
                },),
              ),
            ),
            minWidth: 100,
            backgroundColor: Color.fromRGBO(22, 160, 133, 1),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.none,
            selectedIconTheme: IconThemeData(color: Colors.white, opacity: 1.0),
            unselectedIconTheme:
                IconThemeData(color: Colors.white, opacity: 0.7),
            destinations: [
              ..._navigationTabs.map(
                (d) => NavigationRailDestination(
                    icon: Icon(
                      d.icon,
                      size: 44,
                    ),
                    label: Text(
                      d.title,
                      style: TextStyle(fontSize: 18.0, color: d.index == _selectedIndex ? Colors.white : Colors.white60),
                    )),
              ),
            ],
          ),
          VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: Center(
              child: Text('selectedIndex: $_selectedIndex'),
            ),
          )
        ],
      ),
    );
  }
}
