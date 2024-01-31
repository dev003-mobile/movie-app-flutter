import '../../../../domain/entities/carro_entity.dart';

abstract class ISalvarCarroFavoritoDataSource {
  Future<bool> call(CarroEntity carroDTO);
}