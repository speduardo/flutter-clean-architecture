import 'package:fluttercleanarchitecture/features/home/data/models/estabelecimento.model.dart';
import 'package:fluttercleanarchitecture/features/home/data/repositories/estabelecimento.repository.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/estabelecimento.entity.dart';

class EstabelecimentoUseCase {

  EstabelecimentoRepository repository;
  List<EstabelecimentoEntity> lista;

  EstabelecimentoUseCase({EstabelecimentoRepository repository}) {
    this.repository = repository;
  }

  Future<void> save(EstabelecimentoEntity entity) async {
    this.repository.save(entity);
  }

  Future<List<EstabelecimentoEntity>> getAll() async {
    return await this.repository.getAll();
  }

}