import 'package:fluttercleanarchitecture/features/home/data/datasources/estabelecimento.datasource.dart';
import 'package:fluttercleanarchitecture/features/home/data/models/estabelecimento.model.dart';
import 'package:fluttercleanarchitecture/features/home/domain/repositories/estabelecimento.repository.dart';

class EstabelecimentoRepository implements IEstabelecimentoRepository {

  final EstabelecimentoDataSource dataSource;

  EstabelecimentoRepository({this.dataSource});

  @override
  Future<List<EstabelecimentoModel>> getAll() async {
    return await this.dataSource.getAll();
  }


}