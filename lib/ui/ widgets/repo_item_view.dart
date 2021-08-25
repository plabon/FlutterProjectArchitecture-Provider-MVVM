import 'package:flutter/material.dart';
import 'package:flutter_architecture_with_provider/domain/model/github_repo.dart';

class RepoItemView extends StatelessWidget {
  final GithubRepo repo;
  final VoidCallback onTapFunction;
  RepoItemView({required this.repo, required this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3.0,
                  offset: Offset(0.0, 2.0),
                  color: Color.fromARGB(80, 0, 0, 0))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              repo.name ?? "",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
            ),
            Text(repo.description ?? "",
                maxLines: 2, overflow: TextOverflow.ellipsis)
          ],
        ),
      ),
    );
  }
}
