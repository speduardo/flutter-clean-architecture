import 'package:hive/hive.dart';

part 'estabelecimento.model.g.dart';

@HiveType(typeId: 1)
class EstabelecimentoModel extends HiveObject {

  @HiveField(0)
  int id;

  @HiveField(1)
  String nome;

  @HiveField(2)
  String descricao;

  @HiveField(3)
  String logo;

  @HiveField(4)
  String logradouro;

  @HiveField(5)
  String logradouro_numero;

  @HiveField(6)
  String logradouro_cep;

  @HiveField(7)
  String cidade;

  @HiveField(8)
  String estado;

  @HiveField(9)
  String logradouro_complemento;

  @HiveField(10)
  String bairro;

  @HiveField(11)
  String telefone;

  EstabelecimentoModel({
    this.id,
    this.nome,
    this.descricao,
    this.logo,
    this.logradouro,
    this.logradouro_numero,
    this.logradouro_cep,
    this.logradouro_complemento,
    this.bairro,
    this.cidade,
    this.estado,
    this.telefone,
  });


}
