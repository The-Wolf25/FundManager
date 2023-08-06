import 'package:equal/Screens/withorwithouttax.dart';
import 'package:equal/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class forfriends extends StatefulWidget {
  const forfriends({Key? key}) : super(key: key);

  @override
  State<forfriends> createState() => _forfriendsState();
}

class _forfriendsState extends State<forfriends> {
  bool pressed = false;
  String name1 = "";
  String name2 = "";
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  int? res = 0, num1 = 0, num2 = 0;
  int? ress = 0, num3 = 0, num4 = 0;
  double? finale = 0;
  double? finalee = 0;

  divv() {
    setState(() {});
    num3 = int.parse(controller3.text);
    num4 = int.parse(controller4.text);
    ress = num3! ~/ num4!;
    finalee = ress! + (ress! * 0.18);
  }

  div() {
    setState(() {});
    num1 = int.parse(controller1.text);
    num2 = int.parse(controller2.text);
    res = num1! ~/ num2!;
    finale = res! + (res! * 0.18);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => taxornot()));
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
        child: Column(
          children: [
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
                          name1 = value;
                          setState(() {});
                        }),
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0),
                                borderSide: BorderSide(color: Colors.green)),
                            hintText: 'enter Group Name',
                            labelText: 'Group/Event Name',
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
                        '$name1',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: TextField(
                        controller: controller1,
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
                          vertical: 0, horizontal: 20),
                      child: TextField(
                        controller: controller2,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.green)),
                            hintText: 'enter total number of friends',
                            labelText: 'total friends',
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
                          div();
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
                          controller1.clear();
                          controller2.clear();
                          finale = 0;
                          setState(() {});
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
                      padding: const EdgeInsets.symmetric(
                        vertical: 50,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          'Individual Payment ( including taxes) : $finale',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Title(
                color: Colors.black,
                child: (pressed)
                    ? Padding(
                        padding:
                            const EdgeInsets.only(top: 50, left: 10, right: 10),
                        child: Card(
                          elevation: 5,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30, left: 49, right: 49),
                                child: TextField(
                                  onChanged: ((value) {
                                    name2 = value;
                                    setState(() {});
                                  }),
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          borderSide:
                                              BorderSide(color: Colors.green)),
                                      hintText: 'enter Group Name',
                                      labelText: 'total friends',
                                      labelStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 110, 111, 110)),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                ),
                                child: Text(
                                  '$name2 ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                child: TextField(
                                  controller: controller3,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide:
                                              BorderSide(color: Colors.green)),
                                      hintText: 'enter total bill',
                                      labelText: 'total bill',
                                      labelStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 110, 111, 110)),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 20),
                                child: TextField(
                                  controller: controller4,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide:
                                              BorderSide(color: Colors.green)),
                                      hintText: 'enter total number of friends',
                                      labelText: 'total friends',
                                      labelStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 110, 111, 110)),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 28),
                                child: ElevatedButton(
                                  onPressed: () {
                                    divv();
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
                                    controller3.clear();
                                    controller4.clear();
                                    finalee = 0;
                                    setState(() {});
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
                                padding: const EdgeInsets.symmetric(
                                  vertical: 50,
                                ),
                                child: Text(
                                  'Individual Payment ( including taxes) : $finalee',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Text('')),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: FloatingActionButton(
                    child: Icon(Icons.plus_one),
                    backgroundColor: Colors.green,
                    onPressed: () {
                      pressed = true;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
