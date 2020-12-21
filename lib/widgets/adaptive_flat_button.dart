import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButton({this.text, this.handler});

  @override
  Widget build(BuildContext context) {
    final chooseDateButton = Container(
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
    return Platform.isIOS
        ? CupertinoButton(
            child: chooseDateButton,
            onPressed: handler,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: chooseDateButton,
            onPressed: handler,
          );
  }
}
