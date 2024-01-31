import '../../../domain/entities/carro_entity.dart';

class CarroDTO extends CarroEntity {
  CarroDTO({
    required super.portas, 
    required super.valor, 
    required super.placa
  });

  factory CarroDTO.fromJson(Map<String, dynamic> json) => CarroDTO(
    portas: json["portas"],
    valor: json["valor"],
    placa: json["placa"]
  );

  Map<String, dynamic> toJson() => {
    "portas" : super.portas,
    "valor" : super.valor,
    "placa" : super.placa
  };
}