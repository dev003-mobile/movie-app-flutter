import "package:flutter_test/flutter_test.dart";
import "package:clean_arch_flutter/src/core/domain/entities/carro_entity.dart";

void main() {
  final CarroEntity carroEntity = CarroEntity(portas: 4, valor: 10000, placa: "LD-23-4F-9I");

  test("CarroEntity Não deve retornar nulo", () {
    expect(carroEntity, isNotNull);
  });

  test('Verificar se carroEntity é uma instância de CarroEntity', () {
    expect(carroEntity, isInstanceOf<CarroEntity>());
  });

  test("Esperar que a placa seja LD-23-4F-9I", () {
    expect(carroEntity.placa, "LD-23-4F-9I");
  });
}