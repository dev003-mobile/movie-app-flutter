import "package:flutter_test/flutter_test.dart";
import "package:clean_arch_flutter/src/core/domain/entities/carro_entity.dart";
import "package:clean_arch_flutter/src/core/domain/usecases/carro_usecase/salvar_carro_favorito_usecase/i_salvar_carro_favorito_usecase.dart";
import "package:clean_arch_flutter/src/core/domain/usecases/carro_usecase/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase_imp.dart";
import "package:clean_arch_flutter/src/core/domain/repositories/carro_repositories/salvar_carro_favorito_repository/i_salvar_carro_favorito_repository.dart";

class SalvarCarroFavoritoRepositoryImp implements ISalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async => carroEntity.valor > 1000;
}

void main() {
  test("Deve retornar um true quando passado um tipo de CarroEntity", () async {
    final carroEntity = CarroEntity(placa: "LD-FF-FF-FF", portas: 4, valor: 5000);
    final ISalvarCarroFavoritoUseCase salvarCarro = SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());
    expect(await salvarCarro(carroEntity), true);
  });

  test("Deve retornar um false quando o valor do carroEntity é menor ou igual a 1000", () async {
    final carroEntity = CarroEntity(placa: "LD-FF-FF-FF", portas: 4, valor: 1000);
    final ISalvarCarroFavoritoUseCase salvarCarro = SalvarCarroFavoritoUseCaseImp(SalvarCarroFavoritoRepositoryImp());
    final bool result = await salvarCarro(carroEntity);
    expect(result, false);
  });
}