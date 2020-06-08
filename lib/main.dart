import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/guia.view.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/guiadetail.view.dart';
import 'package:fluttercleanarchitecture/features/reminder/presentation/views/reminder.view.dart';
import 'package:get/get.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/views/home.view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GuiaDetailView(),
    );
  }
}
