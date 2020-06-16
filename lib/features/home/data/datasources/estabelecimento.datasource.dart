import 'package:fluttercleanarchitecture/core/domain/repositories/generic.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/estabelecimento.model.dart';
import 'package:hive/hive.dart';

class EstabelecimentoDataSource
    implements IGenericDataSource<EstabelecimentoModel> {
  Box<EstabelecimentoModel> _box;

  EstabelecimentoDataSource();

  @override
  Future<Box<EstabelecimentoModel>> get box async {
    _box = await Hive.openBox<EstabelecimentoModel>('Estabelecimento');
    return _box;
  }

  @override
  Future<void> save(EstabelecimentoModel model) async {
    (await box).add(model);
  }

  @override
  Future<void> delete(EstabelecimentoModel model) async {
    //final _box = await box;
    //box.delete(model.key);
  }

  @override
  Future<List<EstabelecimentoModel>> getAll() async {
    //final _box = await box;
    return (await box).values.toList();
  }
}
