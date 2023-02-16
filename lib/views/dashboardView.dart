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
      body: Column(
        children: [
          Grafico(valor: 1500),
          CardDashboard(
            cor: Colors.white,
            descricao: "Receita",
            valor: 0.00,
          ),
          CardDashboard(
            cor: Colors.white,
            descricao: "Gastos",
            valor: 0.00,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
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
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
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
    );
  }
}
