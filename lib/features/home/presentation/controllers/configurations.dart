import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Lanchonete', 'iconPath': 'assets/images/lanchonete.png', 'bannerPath': 'assets/images/banner-lanchonete.jpg', 'color': 600},
  {'name': 'Farmácia', 'iconPath': 'assets/images/syringe.png', 'bannerPath': 'assets/images/banner-farmacia.jpg', 'color': 600},
  {'name': 'Restaurante', 'iconPath': 'assets/images/food.png', 'bannerPath': 'assets/images/banner-restaurante.jpg', 'color': 600},
  {'name': 'Supermercado', 'iconPath': 'assets/images/shopping-cart.png', 'bannerPath': 'assets/images/banner-supermercado.jpg', 'color': 600},
  {'name': 'Bar', 'iconPath': 'assets/images/beer.png', 'bannerPath': 'assets/images/banner-bar.jpg', 'color': 600},
];

List<Map> estabelcimentos = [
  {
    'name': 'Disk Pizza',
    'endereco':'Rua M-5, 241 - Setor Novo Horizonte - Acreúna-GO',
    'telefone':'(64) 3645-3324',
    'logoPath': 'assets/images/diskpizza-logo.jpg',
  },
  {
    'name': 'Dyonnim Lanches',
    'telefone':'(64) 9 9945-1151',
    'endereco':'Av. São Felipe (próximo Polícia Militar) - Thálita - Acreúna-GO',
    'logoPath': 'assets/images/dyonnim-logo.jpg'},
  {
    'name': 'Pizaria do Ciri',
    'telefone':'(64) 3645-3324',
    'endereco':'Rua M-5, 241 - Novo Horizonte - Acreúna-GO',
    'logoPath': 'assets/images/ciri-logo.jpg'},
  {
    'name': 'Kenio`s Lanches',
    'telefone':'(64) 9 9952-3822',
    'endereco':'Rosa Guimarães, 207 QD.18, LT. 08 - Canadá - Acreúna-GO',
    'logoPath': 'assets/images/kenios-logo.jpg',},
  {
    'name': 'SorveLanches',
    'telefone':'(64) 3645-1551',
    'endereco':'Av. Amazonas,38 Centro - Acreúna-GO',
    'logoPath': 'assets/images/sorvelanches-logo.png',},
];

List<Map> horizontal_menu = [
  {'name': 'Onde ficar',
    'backgroundPath': 'assets/images/turismo_hoteis.jpg', 'icon': Icons.location_on},
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