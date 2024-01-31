import 'package:get_it/get_it.dart';

import '../../../modules/carro_module/controllers/carro_controller.dart';
import '../../external/datasources/local/carro_local/get_carros_por_cor_datasource_local_imp.dart';
import '../../external/datasources/contracts/carro_datasources/i_get_carros_por_cor_datasource.dart';
import '../../external/datasources/local/carro_local/salvar_carro_favorito_datasource_local_imp.dart';
import '../../external/datasources/contracts/carro_datasources/i_salvar_carro_favorito_datasource.dart';
import '../../domain/usecases/carro_usecase/get_carros_por_cor_usecase/i_get_carros_por_cor_usecase.dart';
import '../../domain/usecases/carro_usecase/get_carros_por_cor_usecase/get_carros_por_cor_usecase_imp.dart';
import '../../domain/usecases/carro_usecase/salvar_carro_favorito_usecase/i_salvar_carro_favorito_usecase.dart';
import '../../domain/usecases/carro_usecase/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase_imp.dart';
import '../../domain/repositories/carro_repositories/get_carros_por_cor_repository/i_get_carros_por_cor_repository.dart';
import '../../external/repositories/carro_repositories/get_carros_por_cor_repository/get_carros_por_cor_repository_imp.dart';
import '../../domain/repositories/carro_repositories/salvar_carro_favorito_repository/i_salvar_carro_favorito_repository.dart';
import '../../external/repositories/carro_repositories/salvar_carro_favorito_repository/salvar_carro_favorito_repository_imp.dart';

class Injections {
  static void initialize() {
    final getIt = GetIt.instance;

    getIt.registerLazySingleton<IGetCarrosPorCorDataSource>(() => GetCarrosPorCorDataSourceLocalImp());
    getIt.registerLazySingleton<ISalvarCarroFavoritoDataSource>(() => SalvarCarroFavoritoDataSourceLocalImp());
    getIt.registerLazySingleton<IGetCarrosPorCorRepository>(() => GetCarrosPorCorRepositoryImp(getIt()));
    getIt.registerLazySingleton<ISalvarCarroFavoritoRepository>(() => SalvarCarroFavoritoRepositoryImp(getIt()));
    getIt.registerLazySingleton<IGetCarrosPorCorUseCase>(() => GetCarrosPorCorUseCaseImp(getIt()));
    getIt.registerLazySingleton<ISalvarCarroFavoritoUseCase>(() => SalvarCarroFavoritoUseCaseImp(getIt()));
    
    getIt.registerFactory<CarroController>(() => CarroController(getIt(), getIt()));
  }
}
