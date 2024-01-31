import '../../../entities/carro_entity.dart';

abstract class IGetCarrosPorCorUseCase {
  Future<List<CarroEntity>> call(String cor);
}