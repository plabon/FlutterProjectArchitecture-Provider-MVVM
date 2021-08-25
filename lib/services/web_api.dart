import 'package:flutter_architecture_with_provider/domain/model/github_repo.dart';

abstract class WebApi {
  Future<List<GithubRepo>> fetchRepos();
}
