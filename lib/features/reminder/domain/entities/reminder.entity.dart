import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Reminder extends Equatable{
  final int id;
  final String title;
  final String description;

  Reminder({
    @required this.id,
    @required this.title,
    @required this.description
  });

  @override
  List<Object> get props => [id, title, description];


}
