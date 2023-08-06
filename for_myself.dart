import 'package:equal/Screens/for_myselfhome.dart';
import 'package:equal/Screens/options_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class formyself extends StatefulWidget {
  const formyself({Key? key}) : super(key: key);

  @override
  State<formyself> createState() => _formyselfState();
}

class _formyselfState extends State<formyself> {
  bool opt = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => options()));
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
          child: Card(
            elevation: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 49, right: 49),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(color: Colors.green)),
                          hintText: 'Enter Amount',
                          labelText: 'Amount',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 110, 111, 110)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 49, right: 49),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(color: Colors.green)),
                          hintText: 'Enter event',
                          labelText: 'Tittle ',
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 110, 111, 110)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'It is ',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        child: InkWell(
                          onTap: () {
                            opt = true;
                            setState(() {});
                          },
                          child: Chip(
                            backgroundColor: (opt)
                                ? Colors.green
                                : Color.fromARGB(255, 204, 202, 202),
                            label: Text('Income'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                          onTap: () {
                            setState(() {
                              opt = true;
                            });
                          },
                          child: Chip(label: Text('Spent'))),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  ElevatedButton(
                    onPressed: (() {
                      setState(() {});
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => myselfhome()));
                    }),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Continue',
                          style: TextStyle(fontSize: 18),
                        )),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: FloatingActionButton(
                          backgroundColor: Colors.green,
                          onPressed: () {},
                          child: Icon(Icons.plus_one),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
