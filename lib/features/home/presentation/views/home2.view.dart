/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/navigationtabs.model.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/configurations.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/controllers/home.controller.dart';
import 'package:fluttercleanarchitecture/features/home/presentation/widgets/custom_fab_button.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  bool _isTapped = false;
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  List<NavigationTabs> _navigationTabs = [
    NavigationTabs(title: "Guia", icon: Icons.store, index: 0),
    NavigationTabs(title: "Anuncie Aqui", icon: Icons.announcement, index: 1),
    NavigationTabs(title: "Fidelidade", icon: Icons.star, index: 2),
    NavigationTabs(
        title: "Sobre Nós", icon: Icons.supervised_user_circle, index: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen?IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: (){
                      setState(() {
                        xOffset=0;
                        yOffset=0;
                        scaleFactor=1;
                        isDrawerOpen=false;

                      });
                    },

                  ): IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        setState(() {
                          xOffset = 230;
                          yOffset = 150;
                          scaleFactor = 0.6;
                          isDrawerOpen=true;
                        });
                      }),
                  */
/*Column(
                      children: [
                        Text('Location'),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: primaryGreen,
                            ),
                            Text('Ukraine'),
                          ],
                        ),
                      ],
                    ),*//*

                  CircleAvatar()
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text('Pesquisa'),
                  Icon(Icons.settings)

                ],
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: banners.map((item) => Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      //boxShadow: shadowList,
                      borderRadius: BorderRadius.circular(0),
                      image: DecorationImage(
                        colorFilter:
                        ColorFilter.mode(Colors.black.withOpacity(0.8),
                            BlendMode.dstATop),
                        image: AssetImage(item['image'].toString()),
                        fit: BoxFit.cover,

                      ),
                    ),
                    */
/*child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image(
                        //color: Colors.black12,
                        width: 350,
                        image: AssetImage(item['image'].toString()),
                      ),
                    ]
                ),*//*

                    //color: Colors.green,
                  )).toList(),
                  //carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    autoPlay: false,
                    enlargeCenterPage: true,
                    //viewportFraction: 0.9,
                    //aspectRatio: 2.0,
                    //initialPage: 2,
                  ),
                ),
              ],),

            Container(height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index){
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          //padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              boxShadow: shadowList,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                colorFilter:
                                ColorFilter.mode(Colors.black.withOpacity(0.8),
                                    BlendMode.dstATop),
                                image: AssetImage(categories[index]['backgroundPath']),
                                fit: BoxFit.cover,

                              ),
                            ),
                            child: Center( child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(categories[index]['icon'], color: Colors.white, size: 28,),
                                Text(categories[index]['name'], style: TextStyle(fontSize: 16, color: Colors.white),)
                              ],))
                          */
/*Image.asset(
                              categories[index]['iconPath'],
                              height: 50,
                              width: 50,
                              color: Colors.grey[700],
                            ),*//*

                        ),
                      ],
                    ),
                  );
                },

              ),
            ),

            Column(
              children: [
                GestureDetector(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));

                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 120.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 120.0,
                          color: Colors.white,
                          child: Column(children: [
                            Image(
                              image: AssetImage('assets/images/diskpizza-logo.jpg'),
                            ),
                            Text('Disk Pizza'),
                            Text('(64) 3645-2388')
                          ],),
                        ),

                        SizedBox(width: 10,),

                        Container(
                          width: 120.0,
                          color: Colors.white,
                          child: Column(children: [
                            Image(
                              image: AssetImage('assets/images/diskpizza-logo.jpg'),
                            ),
                            Text('Disk Pizza'),
                            Text('(64) 3645-2388')
                          ],),
                        ),

                        SizedBox(width: 10,),

                        Container(
                          width: 120.0,
                          color: Colors.white,
                          child: Column(children: [
                            Image(
                              image: AssetImage('assets/images/diskpizza-logo.jpg'),
                            ),
                            Text('Disk Pizza'),
                            Text('(64) 3645-2388')
                          ],),
                        ),

                      ],
                    ),
                  ),


                  */
/*Container(
                  height: 240,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            *//*
*/
/*Container(
                              decoration: BoxDecoration(color: Colors.blueGrey[300],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: shadowList,
                              ),
                              margin: EdgeInsets.only(top: 50),
                            ),*//*
*/
/*
                            Align(
                              child: Hero(
                                  tag:1,
                                  child: Image(
                                    image: AssetImage('assets/images/diskpizza-logo.jpg'),
                                    height: 200,
                                    width: 200,
                                  ),
                              ),
                            )

                          ],
                        ),
                      ),
                      Expanded(child: Container(
                        margin: EdgeInsets.only(top: 55,bottom: 55),
                        decoration: BoxDecoration(color: Colors.white,

                            boxShadow: shadowList,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)

                            )
                        ),
                        child: Column(children: [
                          Text('Disk Pizza'),
                          Text('(64) 3645-2388')
                        ],),

                      ))

                    ],
                  ),

                ),*//*

                ),
              ],
            ),
            */
/*Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 50),
                          ),
                          Align(
                            child: Image.asset('assets/images/pet-cat1.png'),
                          )

                        ],
                      ),
                    ),
                    Expanded(child: Container(
                      margin: EdgeInsets.only(top: 60,bottom: 20),
                      decoration: BoxDecoration(color: Colors.white,

                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                          )
                      ),
                    ))
                  ],
                ),
              ),*//*


            SizedBox(height: 50,)

          ],
        ),
      ),
    );
  }
}
*/
