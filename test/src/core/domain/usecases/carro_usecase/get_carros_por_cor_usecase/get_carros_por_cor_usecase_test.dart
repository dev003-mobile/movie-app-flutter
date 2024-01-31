import "package:flutter_test/flutter_test.dart";
import "package:clean_arch_flutter/src/core/domain/entities/carro_entity.dart";
import "package:clean_arch_flutter/src/core/domain/usecases/carro_usecase/get_carros_por_cor_usecase/i_get_carros_por_cor_usecase.dart";
import "package:clean_arch_flutter/src/core/domain/usecases/carro_usecase/get_carros_por_cor_usecase/get_carros_por_cor_usecase_imp.dart";
import "package:clean_arch_flutter/src/core/domain/repositories/carro_repositories/get_carros_por_cor_repository/i_get_carros_por_cor_repository.dart";

class GetCarrosPorCorRepositoryImp implements IGetCarrosPorCorRepository {
  @override
  Future<List<CarroEntity>> call(String cor) async {
    if (cor == "Vermelha".toLowerCase()) {
      return <CarroEntity>[
        CarroEntity(placa: "LD-FF-FF-FF", portas: 4, valor: 5000),
        CarroEntity(placa: "BE-23-RT-EE", portas: 2, valor: 7000),
        CarroEntity(placa: "ZX-11-FX-GG", portas: 3, valor: 10000),
      ];
    }
    return <CarroEntity>[];
  }
}

void main() {
  test("Deve retornar uma lista de CarroEntity quando passado qualquer cor", () async {
    final IGetCarrosPorCorUseCase carros = GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp());
    final result = await carros("Verde");
    expect(result, isA<List<CarroEntity>>());
  });

  test("Deve retornar uma lista de tamano 3 quando passado a cor Vermelha ou vermelha", () async {
    final IGetCarrosPorCorUseCase carros = GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp());
    final result = await carros("vermelha");
    expect(result.length, 3);
  });
}