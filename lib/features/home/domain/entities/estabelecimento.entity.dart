import 'package:fluttercleanarchitecture/core/domain/entities/generic.entity.dart';

class EstabelecimentoEntity implements GenericEntity {
  String nome;
  String descricao;
  String logo;

  EstabelecimentoEntity({this.nome, this.descricao, this.logo});


}