import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Lanchonete', 'iconPath': 'assets/images/lanchonete.png'},
  {'name': 'Farmácia', 'iconPath': 'assets/images/farmacia.png'},
  {'name': 'Banco', 'iconPath': 'assets/images/banco.png'},
  {'name': 'hospital', 'iconPath': 'assets/images/hospital.png'}
];

List<Map> horizontal_menu = [
  {'name': 'Onde ficar', 'backgroundPath': 'assets/images/turismo_hoteis.jpg', 'icon': Icons.location_on},
  {'name': 'Onde comer', 'backgroundPath': 'assets/images/onde_comer.png', 'icon': Icons.fastfood},
  {'name': 'O que fazer', 'backgroundPath': 'assets/images/eventos.jpg', 'icon': Icons.party_mode},
];

List<Map> banners = [
  {'name': 'Banner 1', 'image': 'assets/images/banner1.png',},
  {'name': 'Banner 2', 'image': 'assets/images/banner1.png',},
];

List<Map> drawerItems=[
  {
    'icon': FontAwesomeIcons.paw,
    'title' : 'Adoption'
  },
  {
    'icon': Icons.mail,
    'title' : 'Donation'
  },
  {
    'icon': FontAwesomeIcons.plus,
    'title' : 'Add pet'
  },
  {
    'icon': Icons.favorite,
    'title' : 'Favorites'
  },
  {
    'icon': Icons.mail,
    'title' : 'Messages'
  },
  {
    'icon': FontAwesomeIcons.userAlt,
    'title' : 'Profile'
  },
];