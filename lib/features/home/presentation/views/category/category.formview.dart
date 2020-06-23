import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/category.entity.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/category.controller.dart';
import 'package:get/get.dart';

class CategoryFormView extends StatefulWidget {
  @override
  _CategoryFormViewState createState() => _CategoryFormViewState();
}

class _CategoryFormViewState extends State<CategoryFormView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            CategoryController.to.save();
            Get.snackbar('Informação', 'Processing data');
          }
        },
        child: Icon(Icons.save),
        backgroundColor: Colors.blue,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //pinned: true,
            floating: true,
            expandedHeight: 120.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.blue.shade900, Colors.lightBlue]),
                ),
              ),
              title: Text(
                'Editar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: SliverFixedExtentList(
              itemExtent: 50,
              delegate: SliverChildListDelegate([
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor informe o nome da categoria';
                    }

                    return null;
                  },
                  onSaved: (value) {
                    (CategoryController.to.entity as CategoryEntity).name =
                        value;
                  },
                  //setState(() => _user.firstName = val),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Descrição'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Por favor informe a descrição da categoria';
                    }

                    return null;
                  },
                  onSaved: (value) {
                    (CategoryController.to.entity as CategoryEntity)
                        .description = value;
                  },
                  //setState(() => _user.firstName = val),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
