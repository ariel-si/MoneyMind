import 'package:flutter/material.dart';
import 'package:money_mind/views/dashboardView.dart';
import 'package:money_mind/views/loginView.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.green,),
    home: Dashboard(),
  ));
}
