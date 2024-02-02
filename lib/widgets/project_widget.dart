import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:myportfolio_ahmadghauri/models/project_model.dart';

class ProjectWidget extends StatelessWidget {
  final Project _project;
  final double _bottomPadding;
  ProjectWidget(this._project, this._bottomPadding);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, _bottomPadding),
      child: InkWell(
        onTap: onProjectClick,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                  flex: 40,
                  child: Image.asset(
                    _project.image,
                    width: width * .25,
                    height: width * .25,
                  )),
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Text(
                        _project.name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      Text(
                        _project.description,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onProjectClick() {
    if (_project.link != null) html.window.open(_project.link, 'adityadroid');
  }
}
