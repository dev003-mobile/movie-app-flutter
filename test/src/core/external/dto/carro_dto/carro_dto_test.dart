import "dart:convert";

import "package:flutter_test/flutter_test.dart";
import "package:clean_arch_flutter/src/core/external/dto/carro_dto/carro_dto.dart";

void main() {
  final CarroDTO carroDTO = CarroDTO(
    placa: "ZE-23-FG-54",
    portas: 8,
    valor: 100000
  );
  
  String json = jsonEncode(carroDTO.toJson());
  CarroDTO fromJson = CarroDTO.fromJson(jsonDecode(json));

  test("Esperar que não retorne uma entidade nula", () {
    expect(carroDTO, isNotNull);
  });

  test("Deve retornar uma instância de CarroDTO", () {
    expect(carroDTO, isInstanceOf<CarroDTO>());
  });

  test("Esperar que placa seja igual a ZE-23-FG-54", () {
    expect(carroDTO.placa, "ZE-23-FG-54");
  });

  test("Esperar que o parse para json o campo valor seja 100000", () {
    expect(jsonDecode(json)["valor"], 100000);
  });

  test("Esperar que o fromJson traga o valor de 8 nas portas", () {
    expect(fromJson.portas, 8);
  });
}
