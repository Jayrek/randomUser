import 'package:flutter/material.dart';
import 'package:ruserapp/view/random_user_list.dart';

void main() => runApp(RandomUser());

class RandomUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Random User',
      home: RamdomUserList(),
      debugShowCheckedModeBanner: false,
    );
  }
}
