import "package:flutter_test/flutter_test.dart";
import "package:clean_arch_flutter/src/core/external/datasources/local/carro_local/get_carros_por_cor_datasource_local_imp.dart";
import "package:clean_arch_flutter/src/core/domain/repositories/carro_repositories/get_carros_por_cor_repository/i_get_carros_por_cor_repository.dart";
import "package:clean_arch_flutter/src/core/external/repositories/carro_repositories/get_carros_por_cor_repository/get_carros_por_cor_repository_imp.dart";

void main() {
  test("Esperar que me retorne uma lista vazia quando cor for diferente de vermelha", () async {
    final IGetCarrosPorCorRepository getCarros = GetCarrosPorCorRepositoryImp(GetCarrosPorCorDataSourceLocalImp());
    final result = await getCarros("preta");
    expect(result.isEmpty, true);
  });

  test("Esperar que me retorne um a lista com 3 carros quando a cor for vermelha", () async {
    final IGetCarrosPorCorRepository getCarros = GetCarrosPorCorRepositoryImp(GetCarrosPorCorDataSourceLocalImp());
    final result = await getCarros("vermelha");
    expect(result.length, 3);
  });
}
