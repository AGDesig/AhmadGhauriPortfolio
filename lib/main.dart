
import 'package:flutter/material.dart';
import 'package:myportfolio_ahmadghauri/pages/home_page.dart';

import 'res/themes.dart';
import 'widgets/theme_inherited_widget.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: AhmadGhauri(),
    );
  }
}
class AhmadGhauri extends StatelessWidget {
  const AhmadGhauri({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aditya Gurjar',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: HomePage(),
    );
  }
}
