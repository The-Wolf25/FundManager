import 'package:equal/Screens/Landing_page.dart';
import 'package:equal/Screens/for_friends._withtax.dart';
import 'package:equal/Screens/options_page.dart';
import 'package:equal/Screens/withouttaxpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class taxornot extends StatefulWidget {
  const taxornot({Key? key}) : super(key: key);

  @override
  State<taxornot> createState() => _taxornotState();
}

class _taxornotState extends State<taxornot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              setState(() {});
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Container(
          child: GridView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (() {
                      setState(() {});
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => forfriends()));
                    }),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.money,
                            color: Colors.green,
                            size: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'With Tax ',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.green),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      color: Color.fromARGB(255, 213, 244, 199),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (() {
                      setState(() {});
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => forfriendtaxless()));
                    }),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.money_off,
                            color: Colors.green,
                            size: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'Without tax',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.green),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                      color: Color.fromARGB(255, 213, 244, 199),
                    ),
                  ),
                ),
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10)),
        ),
      ),
    );
  }
}
