import 'package:fluttercleanarchitecture/core/domain/repositories/generic.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/estabelecimento.model.dart';
import 'package:hive/hive.dart';

class EstabelecimentoDataSource implements IGenericDataSource<EstabelecimentoModel> {

  EstabelecimentoDataSource();

  @override
  get box => Hive.openBox<EstabelecimentoModel>('Estabelecimento');

  @override
  Future<void> save(EstabelecimentoModel model) async {
    final _box = await box;
    _box.add(model);
  }

  @override
  Future<void> delete(EstabelecimentoModel model) async {
    final _box = await box;
    _box.delete(model.key);
  }

  @override
  Future<List<EstabelecimentoModel>> getAll() async {
    final _box = await box;
    return box.values.toList();
  }


}