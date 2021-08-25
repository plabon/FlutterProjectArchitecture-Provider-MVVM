import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_architecture_with_provider/domain/model/github_repo.dart';
import 'package:flutter_architecture_with_provider/domain/viewmodel/repolist_viewmodel.dart';
import 'package:flutter_architecture_with_provider/domain/viewmodel/view_state.dart';
import 'package:flutter_architecture_with_provider/ui/%20widgets/base_view.dart';
import 'package:flutter_architecture_with_provider/ui/%20widgets/repo_item_view.dart';
import 'package:flutter_architecture_with_provider/ui/shared/colorhelper.dart';
import 'package:flutter_architecture_with_provider/ui/shared/text_styles.dart';
import 'package:flutter_architecture_with_provider/ui/shared/ui_helper.dart';

class RepoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<RepoListViewModel>(
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: model.state == ViewState.busy
            ? Center(child: CircularProgressIndicator())
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  UIHelper.verticalSpaceLarge(),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Dart Repositories:',
                      style: headerStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child:
                        Text('Here are all your posts', style: subHeaderStyle),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Expanded(child: getReposUi(model.repos)),
                ],
              ),
      ),
      onModelReady: (model) => {model.getRepositories()},
    );
  }

  Widget getReposUi(List<GithubRepo> repos) => ListView.builder(
      itemCount: repos.length,
      itemBuilder: (context, index) => RepoItemView(
            repo: repos[index],
            onTapFunction: () {},
          ));
}
