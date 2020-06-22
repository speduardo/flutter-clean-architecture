import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryFormView extends StatefulWidget {
  @override
  _CategoryFormViewState createState() => _CategoryFormViewState();
}

class _CategoryFormViewState extends State<CategoryFormView> {
  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
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
          SliverFixedExtentList(
            itemExtent: 100,
            delegate: SliverChildListDelegate([
              Container(
                color: Colors.white,
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(labelText: 'First name'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter your first name';
                          }

                          return '';
                        },
                        onSaved: (val) => {},
                        //setState(() => _user.firstName = val),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
