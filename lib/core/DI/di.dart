import 'package:build_apps_test/features/home/data/datasources/remote_datasource.dart';
import 'package:build_apps_test/features/home/presentation/cubit/homepage_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initDi() {
  getIt.registerLazySingleton(() => HomePageCubit());
  getIt.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: 'https://jsonplaceholder.typicode.com',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'User-Agent': 'PostmanRuntime/7.28.4',
        },
      ),
    ),
  );
  getIt.registerLazySingleton<RemoteDatasource>(
    () => RemoteDatasource(dio: getIt<Dio>()),
  );
}
