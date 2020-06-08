import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/configurations.dart';

class GuiaDetailView extends StatefulWidget {
  GuiaDetailView({Key key}) : super(key: key);

  @override
  _GuiaDetailViewState createState() => _GuiaDetailViewState();
}

class _GuiaDetailViewState extends State<GuiaDetailView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Dyonnim Lanches'),
      ),
      body: Container(),
    );
  }
}