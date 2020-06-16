import 'package:fluttercleanarchitecture/features/home/data/datasources/estabelecimento.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/estabelecimento.model.dart';
import 'package:fluttercleanarchitecture/features/home/domain/entities/estabelecimento.entity.dart';
import 'package:fluttercleanarchitecture/features/home/domain/repositories/estabelecimento.repository.dart';

class EstabelecimentoRepository implements IEstabelecimentoRepository {

  final EstabelecimentoDataSource dataSource;

  EstabelecimentoRepository({this.dataSource});

  @override
  Future<void> save(EstabelecimentoEntity entity) async {
    //(await box).add(model);
    EstabelecimentoModel model = EstabelecimentoModel(
        nome: entity.nome,
        descricao: entity.descricao,
        logo: entity.logo,
    );
    this.dataSource.save(model);
  }

  @override
  Future<List<EstabelecimentoEntity>> getAll() async {
    List<EstabelecimentoModel> lista = await this.dataSource.getAll();

    return List.generate(lista.length, (index) {
      return EstabelecimentoEntity(
        nome: lista[index].nome,
        descricao: lista[index].descricao,
        logo: lista[index].logo,
      );
    });
  }


}