import 'package:flutter/material.dart';
import 'package:money_mind/componets/grafico_pizza.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[50],
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person, color: Colors.black),
          ),
        ],
      ),
      body: Grafico(),
    );
  }
}

class _Infections {
  _Infections(this.year, this.victims);

  final String year;
  final double victims;
}

class CardDashboard extends StatelessWidget {
  Color cor;
  var descricao;
  var valor;

  CardDashboard({
    required this.cor,
    this.descricao,
    this.valor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220,
        height: 100,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 2.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: cor,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    descricao,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    "R\$: $valor",
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
              ),
            )
          ],
        ));
  }
}
