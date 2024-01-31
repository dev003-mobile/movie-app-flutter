import 'package:clean_arch_flutter/src/core/external/dto/carro_dto/carro_dto.dart';

import '../../contracts/carro_datasources/i_get_carros_por_cor_datasource.dart';

class GetCarrosPorCorDataSourceLocalImp implements IGetCarrosPorCorDataSource {
  @override
  Future<List<CarroDTO>> call(String cor) async {
    if (cor == "Vermelha".toLowerCase()) {
      return <CarroDTO>[
        CarroDTO(placa: "LD-FF-FF-FF", portas: 4, valor: 5000),
        CarroDTO(placa: "BE-23-RT-EE", portas: 2, valor: 7000),
        CarroDTO(placa: "ZX-11-FX-GG", portas: 3, valor: 10000),
      ];
    }
    return <CarroDTO>[];
  }
}