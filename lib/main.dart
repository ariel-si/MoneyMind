import 'package:flutter/material.dart';
import 'package:money_mind/views/dashboardView.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
     primarySwatch: Colors.grey
    ),
    home: Dashboard(),
  ));
}
