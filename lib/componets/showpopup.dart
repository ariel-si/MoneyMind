import 'package:flutter/material.dart';

class ShowPopUp extends StatelessWidget {
  const ShowPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Alerta!"),
      elevation: 10,
    );
  }
}
