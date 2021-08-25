import 'dart:convert';

import 'package:flutter_architecture_with_provider/domain/model/github_repo.dart';
import 'package:flutter_architecture_with_provider/services/web_api.dart';
import 'package:http/http.dart' as http;

class WebApiImplementation extends WebApi {
  static const String apiEndPoint = "api.github.com";

  var client = new http.Client();
  final Map<String, String> _headers = {'Accept': 'application/json'};

  @override
  Future<List<GithubRepo>> fetchRepos() async {
    var repoList = <GithubRepo>[];
    final queryParameters = {
      'q': 'created:>2021-01-01+language:dart',
      'sort': 'stars',
      'order': 'desc',
      'per_page': '30',
    };
    // var url = Uri.https(apiEndPoint, 'search/repositories', queryParameters);
    var uri = Uri.parse(
        "https://api.github.com/search/repositories?q=created:%3E2021-01-01+language:dart&sort=stars&order=desc&per_page=30");
    var response = await client.get(uri);
    print("Response: " + response.body);
    var repoListJson = json.decode(response.body)['items'] as List<dynamic>;
    print(repoListJson);
    for (var post in repoListJson) {
      repoList.add(GithubRepo.fromJson(post));
    }
    return repoList;
  }
}
