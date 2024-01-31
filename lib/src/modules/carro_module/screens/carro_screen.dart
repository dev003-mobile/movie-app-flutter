import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:clean_arch_flutter/src/core/domain/entities/carro_entity.dart';

import '../controllers/carro_controller.dart';

class CarroScreen extends StatefulWidget {
  CarroScreen({super.key});

  final CarroController _carroController = GetIt.I.get<CarroController>();

  @override
  State<CarroScreen> createState() => _CarroScreenState();
}

class _CarroScreenState extends State<CarroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<CarroEntity>>(
          future: widget._carroController.buscarCarroCor("vermelha"), 
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(
                color: Colors.black
              );
            }
            return Text(
              snapshot.data![0].valor.toString(),
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            );
          }
        )
      ),
    );
  }
}