import '../../../dto/carro_dto/carro_dto.dart';
import '../../../datasources/contracts/carro_datasources/i_get_carros_por_cor_datasource.dart';
import '../../../../domain/repositories/carro_repositories/get_carros_por_cor_repository/i_get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements IGetCarrosPorCorRepository {
  final IGetCarrosPorCorDataSource _iGetCarrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._iGetCarrosPorCorDataSource);

  @override
  Future<List<CarroDTO>> call(String cor) async {
    return await _iGetCarrosPorCorDataSource(cor);
  }
}