import 'package:flutter/material.dart';
import 'package:ruserapp/view/screen/random_user_list_screen.dart';

void main() => runApp(RandomUser());

class RandomUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Random User',
        home: RandomUserListScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat'));
  }
}
