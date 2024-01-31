import '../../../entities/carro_entity.dart';

abstract class ISalvarCarroFavoritoRepository {
  Future<bool> call(CarroEntity carroEntity);
}