import 'package:equal/Screens/options_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class forcouples extends StatefulWidget {
  const forcouples({Key? key}) : super(key: key);

  @override
  State<forcouples> createState() => _forcouplesState();
}

class _forcouplesState extends State<forcouples> {
  String name = '';
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();
  TextEditingController bill = TextEditingController();
  double? total = 0;
  double? billl = 0;
  double? salA = 0;
  double? salB = 0;
  double? x = 0;
  double? sub = 0;

  double? y = 0;
  double? fullfinal = 0;

  calc() {
    setState(() {});
    salA = double.parse(con1.text);
    salB = double.parse(con2.text);
    billl = double.parse(bill.text);
    total = salA! + salB!;
    x = (salA! * 100 / total!);
    fullfinal = billl! * x!;
    sub = fullfinal! / 100;
    y = billl! - sub!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => options()));
              },
              icon: Icon(Icons.arrow_back)),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 126, 196, 128),
          centerTitle: true,
          title: Text(
            'Eq=al',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 49, right: 49),
                    child: TextField(
                      onChanged: ((value) {
                        name = value;
                        setState(() {});
                      }),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(color: Colors.green)),
                          hintText: 'enter date/day',
                          labelText: 'Event',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 110, 111, 110)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: Text(
                      '$name',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: TextField(
                      controller: bill,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.green)),
                          hintText: 'enter total bill',
                          labelText: 'total bill',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 110, 111, 110)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: TextField(
                      controller: con1,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.green)),
                          hintText: 'enter Partner A salary ',
                          labelText: 'His salary',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 110, 111, 110)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: TextField(
                      controller: con2,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.green)),
                          hintText: 'wnter partner B salary',
                          labelText: 'Her salary',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 110, 111, 110)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: ElevatedButton(
                      onPressed: () {
                        calc();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Calculate',
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          con1.clear();
                          con2.clear();
                          bill.clear();
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Clear',
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'He should pay: $sub',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13, bottom: 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        'She should pay : $y ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ])));
  }
}
