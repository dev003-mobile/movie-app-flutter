import "package:flutter_test/flutter_test.dart";
import "package:clean_arch_flutter/src/core/domain/entities/carro_entity.dart";
import "package:clean_arch_flutter/src/core/external/datasources/local/carro_local/get_carros_por_cor_datasource_local_imp.dart";
import "package:clean_arch_flutter/src/core/domain/usecases/carro_usecase/get_carros_por_cor_usecase/i_get_carros_por_cor_usecase.dart";
import "package:clean_arch_flutter/src/core/domain/usecases/carro_usecase/get_carros_por_cor_usecase/get_carros_por_cor_usecase_imp.dart";
import "package:clean_arch_flutter/src/core/external/repositories/carro_repositories/get_carros_por_cor_repository/get_carros_por_cor_repository_imp.dart";

void main() {
  test("Deve retornar uma lista de CarroEntity quando passado qualquer cor", () async {
    final IGetCarrosPorCorUseCase carros = GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp(GetCarrosPorCorDataSourceLocalImp()));
    final result = await carros("Verde");
    expect(result, isA<List<CarroEntity>>());
  });

  test("Deve retornar uma lista de tamano 3 quando passado a cor Vermelha ou vermelha", () async {
    final IGetCarrosPorCorUseCase carros = GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp(GetCarrosPorCorDataSourceLocalImp()));
    final result = await carros("vermelha");
    expect(result.length, 3);
  });
}