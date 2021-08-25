class GithubRepo {
  int? id;
  String? htmlUrl;
  String? url;
  String? name;
  String? language;
  String? description;

  GithubRepo(
      {this.id,
      this.htmlUrl,
      this.url,
      this.name,
      this.language,
      this.description});

  factory GithubRepo.fromJson(Map<String, dynamic> json) {
    return GithubRepo(
      id: json['id'] as int,
      htmlUrl: json['html_url'] as String,
      url: json['url'] as String,
      name: json['name'] as String,
      description: json['description'] == null ? null : json['description'],
      language: json['language'] as String,
    );
  }
}
