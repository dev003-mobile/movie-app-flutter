import '../../../../domain/entities/carro_entity.dart';
import '../../contracts/carro_datasources/i_salvar_carro_favorito_datasource.dart';

class SalvarCarroPorCorDataSourceLocalImp implements ISalvarCarroPorCorDataSource {
  @override
  Future<bool> call(CarroEntity carroEntity) async => carroEntity.valor > 1000;
}