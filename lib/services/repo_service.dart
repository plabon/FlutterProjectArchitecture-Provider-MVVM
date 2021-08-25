import 'package:flutter_architecture_with_provider/domain/model/github_repo.dart';

abstract class RepoService {
  Future<List<GithubRepo>> getAllRepos();
}
