import 'package:fluttercleanarchitecture/features/home/data/models/estabelecimento.model.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/estabelecimento.entity.dart';

abstract class IEstabelecimentoRepository<T extends Object> {

  Future<void> save(EstabelecimentoEntity entity);

  Future<List<EstabelecimentoEntity>> getAll();


}