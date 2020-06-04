import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    namedRoutes: {
      '/': GetRoute(page: First()),
      '/second': GetRoute(page: Second(), binding: SampleBind()),
      '/third': GetRoute(page: Third()),
    },
  ));
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Get.snackbar("Hi", "I'm modern snackbar");
          },
        ),
        title: Text('First Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Controller>(
                init: Controller(),
                // You can initialize your controller here the first time. Don't use init in your other GetBuilders of same controller
                builder: (s) => Text(
                  'clicks: ${s.count}',
                )),
            RaisedButton(
              child: Text('Next Route'),
              onPressed: () {
                // use Get.to to navigate to Second Screen
                Get.toNamed('/second');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Controller.to.increment();
          }),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second Route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<ControllerX>(
              // Using bindings you don't need of init: method
              builder: (_) {
                print("count1 rebuild");
                return Text('${_.count1.value}');
              },
            ),
            GetX<ControllerX>(
              builder: (_) {
                print("count2 rebuild");
                return Text('${_.count2.value}');
              },
            ),
            GetX<ControllerX>(
              builder: (_) {
                print("sum rebuild");
                return Text('${_.sum}');
              },
            ),
            GetX<ControllerX>(
              builder: (_) {
                print("count data source");
                return Text('${_.getCount()}');
              },
            ),

            // Using obx or Obx, you don't need of type. It's work only with RxController
            obx(() => Text(Get.find<ControllerX>().name.value)),
            RaisedButton(
              child: Text("Go to last page"),
              onPressed: () {
                Get.toNamed('/third', arguments: 'argumentososoos');
              },
            ),
            RaisedButton(
              child: Text("Increment"),
              onPressed: () {
                Get.find<ControllerX>().increment();
              },
            ),
            RaisedButton(
              child: Text("Increment"),
              onPressed: () {
                Get.find<ControllerX>().increment2();
              },
            ),RaisedButton(
              child: Text("Increment datasource"),
              onPressed: () {
                Get.find<ControllerX>().incrementDataSource();
              },
            ),
            RaisedButton(
              child: Text("Change name to lauren"),
              onPressed: () {
                Get.find<ControllerX>().name.value = "Lauren";
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.find<ControllerX>().incrementList();
      }),
      appBar: AppBar(
        title: Text("Third ${Get.arguments}"),
      ),
      body: Center(child: GetX<ControllerX>(builder: (_) {
        return ListView.builder(
            itemCount: _.list.length,
            itemBuilder: (context, index) {
              return Text("${_.list[index]}");
            });
      })),
    );
  }
}

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataSource>(() => DataSource());
    Get.lazyPut<ControllerX>(() => ControllerX(DataSource()));
  }

  String call<SampleBind>() {
    return 'boa';
  }
}

class Controller extends GetController {
  /// You definitely don't need to use this method.
  /// I use it because it facilitates a lot in productivity
  /// when I have dozens of references to a controller.
  /// In order to use the Get.find<Controller>().count syntax
  /// you can take advantage of the IDE's autocomplete
  /// and type without typing the type like this:
  /// Controller.to.count

  static Controller get to => Get.find();

  int count = 0;
  void increment() {
    count++;

    /// use update method to update all count variables
    update(this);
  }
}

class ControllerX extends RxController {
  final count1 = 0.obs;
  final count2 = 0.obs;
  final list = [56].obs;

  /// Once the controller has entered memory, onInit will be called.
  /// It is preferable to use onInit instead of class constructors or initState method.
  /// Use onInit to trigger initial events like API searches, listeners registration
  /// or Workers registration.
  /// Workers are event handlers, they do not modify the final result,
  /// but it allows you to listen to an event and trigger customized actions.
  /// Here is an outline of how you can use them:
  @override
  onInit() {
    /// Called every time the variable $_ is changed
    ever(count1, (_) => print("$_ has been changed"));

    /// Called first time the variable $_ is changed
    once(count1, (_) => print("$_ was changed once"));

    /// Anti DDos - Called every time the user stops typing for 1 second, for example.
    debounce(count1, (_) => print("debouce$_"), time: Duration(seconds: 1));

    /// Ignore all changes within 1 second.
    interval(count1, (_) => print("interval $_"), time: Duration(seconds: 1));
  }

  int get sum => count1.value + count2.value;

  final name = "Jonatas Borges".obs;

  increment() => count1.value++;

  DataSource _dataSource;
  ControllerX(DataSource dataSource){
    _dataSource = dataSource;
  }

  incrementDataSource() => _dataSource.increment();
  getCount() => _dataSource.entity.count;

  increment2() => count2.value++;

  incrementList() => list.add(75);
}

class DataSource {
  final entity = Entity();

  increment() => entity.count++;
}

class RxEntity {
  final count = 0.obs;
}

class Entity {

  Entity({int count});
  final rx = RxEntity();

  int get count => rx.count.value;
  set count(int value) =>rx.count.value = value;
}