import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationTabs {
  final String title;
  final IconData icon;
  final int index;

  NavigationTabs({
    this.title,
    @required this.icon,
    this.index,
  });

  /*List<NavigationTabs> navigationTabs = [
    NavigationTabs(title: "Guia", icon: Icons.home, index: 0),
    NavigationTabs(title: "Anuncie Aqui", icon: Icons.fingerprint, index: 1),
    NavigationTabs(title: "Fidelidade", icon: Icons.star, index: 2),
    NavigationTabs(title: "Sobre Nós", icon: Icons.supervised_user_circle, index: 3),
  ];*/
}
