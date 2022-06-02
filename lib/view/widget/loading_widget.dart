import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final String message;

  LoadingWidget({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text(message,
                style: TextStyle(color: Colors.black45, fontSize: 18.0)),
            SizedBox(height: 20.0)
          ]));
}
