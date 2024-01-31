import 'i_get_carros_por_cor_usecase.dart';
import '../../../entities/carro_entity.dart';
import '../../../repositories/carro_repositories/get_carros_por_cor_repository/i_get_carros_por_cor_repository.dart';

class GetCarrosPorCorUseCaseImp implements IGetCarrosPorCorUseCase {
  final IGetCarrosPorCorRepository _iGetCarrosPorCorRepository;

  GetCarrosPorCorUseCaseImp(this._iGetCarrosPorCorRepository);

  @override
  Future<List<CarroEntity>> call(String cor) async {
    return await _iGetCarrosPorCorRepository(cor);
  }
}