import 'package:flutter_architecture_with_provider/domain/model/github_repo.dart';
import 'package:flutter_architecture_with_provider/locator.dart';
import 'package:flutter_architecture_with_provider/services/repo_service.dart';
import 'package:flutter_architecture_with_provider/services/web_api.dart';

class RepoServiceImp extends RepoService {
  WebApi webApi = locator<WebApi>();
  @override
  Future<List<GithubRepo>> getAllRepos() {
    return webApi.fetchRepos();
  }
}
