import "package:flutter_test/flutter_test.dart";
import "package:clean_arch_flutter/src/core/domain/entities/carro_entity.dart";
import "package:clean_arch_flutter/src/core/external/datasources/local/carro_local/salvar_carro_favorito_datasource_local_imp.dart";
import "package:clean_arch_flutter/src/core/domain/usecases/carro_usecase/salvar_carro_favorito_usecase/i_salvar_carro_favorito_usecase.dart";
import "package:clean_arch_flutter/src/core/domain/usecases/carro_usecase/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase_imp.dart";
import "package:clean_arch_flutter/src/core/external/repositories/carro_repositories/salvar_carro_favorito_repository/salvar_carro_favorito_repository_imp.dart";


void main() {
  test("Deve retornar um true quando passado um tipo de CarroEntity", () async {
    final carroEntity = CarroEntity(placa: "LD-FF-FF-FF", portas: 4, valor: 5000);
    final ISalvarCarroFavoritoUseCase salvarCarro = SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp(SalvarCarroFavoritoDataSourceLocalImp()));
    expect(await salvarCarro(carroEntity), true);
  });

  test("Deve retornar um false quando o valor do carroEntity é menor ou igual a 1000", () async {
    final carroEntity = CarroEntity(placa: "LD-FF-FF-FF", portas: 4, valor: 1000);
    final ISalvarCarroFavoritoUseCase salvarCarro = SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp(SalvarCarroFavoritoDataSourceLocalImp()));
    final bool result = await salvarCarro(carroEntity);
    expect(result, false);
  });
}