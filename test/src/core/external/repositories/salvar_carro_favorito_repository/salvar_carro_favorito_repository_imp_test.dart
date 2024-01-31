import "package:flutter_test/flutter_test.dart";
import "package:clean_arch_flutter/src/core/external/dto/carro_dto/carro_dto.dart";
import "package:clean_arch_flutter/src/core/external/datasources/local/carro_local/salvar_carro_favorito_datasource_local_imp.dart";
import "package:clean_arch_flutter/src/core/domain/repositories/carro_repositories/salvar_carro_favorito_repository/i_salvar_carro_favorito_repository.dart";
import "package:clean_arch_flutter/src/core/external/repositories/carro_repositories/salvar_carro_favorito_repository/salvar_carro_favorito_repository_imp.dart";

void main() {
  test("Esperar que retorne true quando passado um CarroDTO", () async {
    final CarroDTO carroDTO = CarroDTO(
      placa: "ZE-23-FG-54",
      portas: 8,
      valor: 100000
    );
  
    final ISalvarCarroFavoritoRepository salvarCarro = SalvarCarroFavoritoRepositoryImp(SalvarCarroPorCorDataSourceLocalImp());
    final result = await salvarCarro(carroDTO);
    expect(result, true);
  });

  test("Esperar que retorne false quando valor do CarroDTO é menor ou igual a 1000", () async {
    final CarroDTO carroDTO = CarroDTO(
      placa: "ZE-23-FG-54",
      portas: 8,
      valor: 23
    );
  
    final ISalvarCarroFavoritoRepository salvarCarro = SalvarCarroFavoritoRepositoryImp(SalvarCarroPorCorDataSourceLocalImp());
    final result = await salvarCarro(carroDTO);
    expect(result, false);
  })
;}