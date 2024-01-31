import 'package:clean_arch_flutter/src/core/domain/entities/carro_entity.dart';

import '../../../core/domain/usecases/carro_usecase/get_carros_por_cor_usecase/i_get_carros_por_cor_usecase.dart';
import '../../../core/domain/usecases/carro_usecase/salvar_carro_favorito_usecase/i_salvar_carro_favorito_usecase.dart';

class CarroController {
  final IGetCarrosPorCorUseCase _iGetCarrosPorCorUseCase;
  final ISalvarCarroFavoritoUseCase _iSalvarCarroFavoritoUseCase;

  CarroController(this._iGetCarrosPorCorUseCase, this._iSalvarCarroFavoritoUseCase);

  Future<List<CarroEntity>> buscarCarroCor(String cor) async => await _iGetCarrosPorCorUseCase(cor);
  Future<bool> salvarCarroFavorito(CarroEntity entity) async => await _iSalvarCarroFavoritoUseCase(entity);
}
