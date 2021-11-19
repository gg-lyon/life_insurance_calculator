import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Life Insurance Calculator',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Life Insurance Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _mortgage;
  int _credit;
  int _bankloan;
  int _loanother;
  int _sumloan;
  int _income;
  int _totalincome;
  int _rent;
  int _food;
  int _util;
  int _transport;
  int _monthother;
  int _summonth;
  int _holiday;
  int _edu;
  int _annualmain;
  int _miscother;
  int _summisc;
  int _annualdisp;




  _addloan() {
    setState(() {
      _sumloan = _mortgage + _credit + _bankloan + _loanother;
    });
  }

  _addmonth() {
    setState(() {
      _summonth = _rent + _food + _util + _transport + _monthother;
    });
  }

  _addmisc() {
    setState(() {
      _summisc = _holiday + _edu + _annualmain + _miscother;
    });
  }

  _subtract() {
    setState(() {
      _totalincome = _income - _sumloan - _summonth - _summisc;
    });
  }

  _yearlyincome() {
    setState(() {
      _annualdisp = _totalincome * 12;
    });
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[


              Align(
                alignment: Alignment.topLeft,
              child: Text('Income:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    hintText: 'Income'
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                _income = int.parse(value);
              }),
              SizedBox(height: 50),


              Align(
                alignment: Alignment.topLeft,
                child: Text('Loan:',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //Text('Loan'),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Mortgage'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _mortgage = int.parse(value);
              }),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Credit Cards'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _credit = int.parse(value);
              }),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Bank Loan/Overdraft'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _bankloan = int.parse(value);
              }),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Other'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _loanother = int.parse(value);
              }),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Total loan: QAR $_sumloan',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //Text('Sum $_sumloan'),
              SizedBox(height: 50),


              Align(
                alignment: Alignment.topLeft,
                child: Text('Monthly Expense:',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //Text('Monthly Expense'),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Rent'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _rent = int.parse(value);
              }),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Food'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _food = int.parse(value);
              }),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Utilities'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _util = int.parse(value);
              }),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Transport Costs'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _transport = int.parse(value);
              }),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Other'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _monthother = int.parse(value);
              }),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Total monthly expenses: QAR $_summonth',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //Text('Sum $_summonth'),
              SizedBox(height: 50),


              Align(
                alignment: Alignment.topLeft,
                child: Text('Additional Expense:',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //Text('Additional Expense'),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Holiday'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _holiday = int.parse(value);
              }),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Education'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _edu = int.parse(value);
              }),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Annual Maintenance'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _annualmain = int.parse(value);
              }),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      hintText: 'Other'
                  ),
                  keyboardType: TextInputType.number,onChanged: (value) {
                _miscother = int.parse(value);
              }),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Total additional expenses: QAR $_summisc',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //Text('Sum $_summisc'),

              SizedBox(height: 50),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Total disposable income: QAR $_totalincome',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //Text('Sum $_totalincome'),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Annual disposable income: QAR $_annualdisp',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //Text('Sum $_annualdisp'),
              SizedBox(height: 25),


              ElevatedButton(
                  onPressed: ()=> [_addloan(), _addmonth(), _addmisc(), _subtract(),
                    _yearlyincome()],
                  child: Text ('Calculate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
