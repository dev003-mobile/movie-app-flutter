import '../../../entities/carro_entity.dart';

abstract class ISalvarCarroFavoritoUseCase {
  Future<bool> call(CarroEntity carroEntity);
}