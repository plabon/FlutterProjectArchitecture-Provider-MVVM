import 'package:flutter_architecture_with_provider/domain/viewmodel/repolist_viewmodel.dart';
import 'package:flutter_architecture_with_provider/services/repo_service.dart';
import 'package:flutter_architecture_with_provider/services/repo_service_imp.dart';
import 'package:flutter_architecture_with_provider/services/web_api.dart';
import 'package:flutter_architecture_with_provider/services/web_api_imp.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerLazySingleton(() => RepoListViewModel());
  locator.registerLazySingleton<WebApi>(() => WebApiImplementation());
  locator.registerLazySingleton<RepoService>(() => RepoServiceImp());
}
