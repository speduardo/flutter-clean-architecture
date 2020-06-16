import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/estabelecimento.model.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

part 'get_state_main.g.dart';

@HiveType(typeId: 2)
class Model extends HiveObject {

  @HiveField(0)
  int id;

  @HiveField(1)
  String nome;

  @HiveField(2)
  String descricao;

  Model({
    this.id,
    this.nome,
    this.descricao,
  });
}

Future<void> _initialiseHive() async {
  final Directory appDocDirectory = await getApplicationDocumentsDirectory();
  final path = appDocDirectory.path;

  Hive.init(path);
  Hive.registerAdapter(ModelAdapter());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initialiseHive();

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
            /*GetX<ControllerX>(
              builder: (_) {
                print("count data source");
                return Text('${_.getCount()}');
              },
            ),*/

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
        Entity entity = Entity(nome: 'Eduardo Pereira');
        Get.find<ControllerX>().save(entity);
      }),
      appBar: AppBar(
        title: Text("Third ${Get.arguments}"),
      ),
      body: Center(child: GetX<ControllerX>(builder: (_) {
        return ListView.builder(
            itemCount: _.getAll() != null ? _.getAll().length : 0,
            itemBuilder: (context, index) {
              Entity entity = _.getAll()[index];
              return Text("Nome: ${entity.nome}");
            });
      })),
    );
  }
}

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataSource>(() => DataSource());
    Get.lazyPut<Repository>(() => Repository(dataSource: DataSource()));
    Get.lazyPut<ControllerX>(() => ControllerX(Repository(dataSource: DataSource())));
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
    update();
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

  //Repository repository = Repository(dataSource: DataSource());

  Repository _repository;
  DataSource _dataSource;
  ControllerX(Repository repository){
    this._repository = repository;
  }

  incrementDataSource() => _dataSource.increment();
  getCount() => _dataSource.entity.count;

  increment2() => count2.value++;

  incrementList() => list.add(75);

  getAll() {
    return _repository.getAll();
  }

  save(Entity entity) {
    _repository.save(entity);
  }

}

class Repository {
  DataSource dataSource;
  List<Entity> lista;

  Repository({this.dataSource});

  save(Entity entity) {
    Model model = Model(nome: entity.nome);
    this.dataSource.save(model);
  }

  List<Entity> getAll() {

    this.dataSource.getAll().then((value) {
      List<Entity> _lista = List.generate(value.length, (index) {
        return Entity(
          nome: value[index].nome,
        );
      });
      this.lista = _lista;
    });

    return lista;
  }
}

class DataSource {
  //var _box;

  Future<Box<Model>> get box async {
    return await Hive.openBox<Model>('Model');
  }

  save(Model model) async {
    (await box).add(model);
  }

  Future<Model> getById(int index) async {
    return (await box).getAt(index);
  }

  Future<List<Model>> getAll() async {
    return (await box).values.toList();
  }

  final entity = Entity();

  increment() => entity.count++;
}

class Entity {

  final _count = 0.obs;
  final _nome = ''.obs;

  Entity({int count, String nome}){
    this._nome.value = nome;
  }
  //final rx = RxEntity();

  int get count => _count.value;
  set count(int value) => _count.value = value;

  String get nome => _nome.value;
  set nome(String value) => _nome.value = value;
}
