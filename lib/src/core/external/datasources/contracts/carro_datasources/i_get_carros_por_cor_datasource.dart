import 'package:clean_arch_flutter/src/core/external/dto/carro_dto/carro_dto.dart';

abstract class IGetCarrosPorCorDataSource {
  Future<List<CarroDTO>> call(String cor);
}
