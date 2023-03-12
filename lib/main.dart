import 'package:dispesas/model/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: MyHomePage()
    );
  }
}



class ExpenseUnit extends StatelessWidget {
  final Transaction _transaction;
  
  ExpenseUnit(this._transaction)

  @override
  Widget build(BuildContext context){
    return Text(
      '${_transaction.id} - ${_transaction.value}'
    );
  }
}


class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(id: 't1', value: 310.5, title: 'Tenis novo', date: DateTime.now()),
    Transaction(id: 't2', value: 10.5, title: 'Lanche', date: DateTime.now()),
    Transaction(id: 't3', value: 32.1, title: 'Passagem', date: DateTime.now())
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('My Expenses')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            height: 45.5,
            child:  Card(
              child: Text('Grafico', textAlign: TextAlign.center, style: TextStyle(color: Colors.red, fontSize: 30),),
              elevation: 5,),
          ),
          Column(
            children: [
              ..._transactions.map((e){
                return ExpenseUnit(e);
              }).toList(),
            ],
          )
        ],
      )
    );
  }
}