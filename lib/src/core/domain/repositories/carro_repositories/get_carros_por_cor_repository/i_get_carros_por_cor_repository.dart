import '../../../entities/carro_entity.dart';

abstract class IGetCarrosPorCorRepository {
  Future<List<CarroEntity>> call(String cor);
}