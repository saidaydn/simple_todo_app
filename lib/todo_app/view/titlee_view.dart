import 'package:flutter/material.dart';
import 'package:todo_app/todo_app/constants/colors.dart';
import 'package:todo_app/todo_app/constants/strings.dart';


class Titlee extends StatelessWidget {
  const Titlee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
     Strings.todos,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colorss.titleViewColor,
        fontSize: 100,
        fontWeight: FontWeight.w100,
        fontFamily: Strings.fontFamily,
      ),
    );
  }
}

