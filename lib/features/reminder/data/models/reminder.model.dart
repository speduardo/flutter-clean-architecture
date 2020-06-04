import 'package:flutter/cupertino.dart';
import 'package:fluttercleanarchitecture/features/reminder/domain/entities/reminder.entity.dart';

class ReminderModel extends Reminder {
  ReminderModel({
    @required int id,
    @required String title,
    @required String description,
  }) : super(id: id, title: title, description: description);

  factory ReminderModel.fromJson(Map<String, dynamic> json) {
    return ReminderModel(
        id: (json['id'] as num).toInt(),
        title: json['title'],
        description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description
    };
  }
}