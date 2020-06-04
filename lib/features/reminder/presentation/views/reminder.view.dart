import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/features/reminder/presentation/controllers/reminder.controller.dart';
import 'package:get/get.dart';

class ReminderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminder'),
      ),
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
    );
  }

  GetX<ReminderController> buildBody(BuildContext context) {
    return GetX<ReminderController>(
        init: ReminderController(),
        builder: (_) {
          print('reminder foi reconstruido - ${_.title.value}');
          return Text('${_.title.value}');
        });
  }
}
