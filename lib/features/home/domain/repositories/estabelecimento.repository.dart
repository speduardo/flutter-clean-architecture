import 'package:fluttercleanarchitecture/features/home/data/models/estabelecimento.model.dart';

abstract class IEstabelecimentoRepository {

  Future<List<EstabelecimentoModel>> getAll();


}