import '../../../entities/carro_entity.dart';
import 'i_salvar_carro_favorito_usecase.dart';
import '../../../repositories/carro_repositories/salvar_carro_favorito_repository/i_salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoUseCaseImp implements ISalvarCarroFavoritoUseCase {
  final ISalvarCarroFavoritoRepository _iSalvarCarroFavoritoRepository;

  SalvarCarroFavoritoUseCaseImp(this._iSalvarCarroFavoritoRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return await _iSalvarCarroFavoritoRepository(carroEntity);
  }
}