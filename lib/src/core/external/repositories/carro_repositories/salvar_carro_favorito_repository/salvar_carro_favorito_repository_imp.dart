import 'package:clean_arch_flutter/src/core/domain/entities/carro_entity.dart';

import '../../../datasources/contracts/carro_datasources/i_salvar_carro_favorito_datasource.dart';
import '../../../../domain/repositories/carro_repositories/salvar_carro_favorito_repository/i_salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoRepositoryImp implements ISalvarCarroFavoritoRepository {
  final ISalvarCarroPorCorDataSource _iSalvarCarroPorCorDataSource;

  SalvarCarroFavoritoRepositoryImp(this._iSalvarCarroPorCorDataSource);

  @override
  Future<bool> call(CarroEntity carroEntity) async => await _iSalvarCarroPorCorDataSource(carroEntity);
}