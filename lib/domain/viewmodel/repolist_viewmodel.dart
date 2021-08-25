import 'package:flutter/material.dart';
import 'package:flutter_architecture_with_provider/domain/model/github_repo.dart';
import 'package:flutter_architecture_with_provider/domain/viewmodel/base_view_model.dart';
import 'package:flutter_architecture_with_provider/domain/viewmodel/view_state.dart';
import 'package:flutter_architecture_with_provider/locator.dart';
import 'package:flutter_architecture_with_provider/services/repo_service.dart';

class RepoListViewModel extends BaseModel {
  List<GithubRepo> repos = [];
  RepoService repoService = locator<RepoService>();

  RepoListViewModel() {
    getRepositories();
  }

  void getRepositories() async {
    setState(ViewState.busy);
    repos = await repoService.getAllRepos();
    setState(ViewState.idle);
  }
}
