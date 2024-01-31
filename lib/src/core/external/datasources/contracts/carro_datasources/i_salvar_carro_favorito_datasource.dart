import '../../../../domain/entities/carro_entity.dart';

abstract class ISalvarCarroPorCorDataSource {
  Future<bool> call(CarroEntity carroDTO);
}