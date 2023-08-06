import 'package:equal/Screens/withorwithouttax.dart';
import 'package:equal/components/appbar.dart';
import 'package:equal/Screens/for_couples.dart';
import 'for_friends._withtax.dart';
import 'package:equal/Screens/for_myself.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class options extends StatefulWidget {
  const options({Key? key}) : super(key: key);

  @override
  State<options> createState() => _optionsState();
}

class _optionsState extends State<options> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 222, 245, 223),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 126, 196, 128),
        centerTitle: true,
        title: Text(
          'Eq=al',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 100, bottom: 120),
        child: Card(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: InkWell(
                    child: ListTile(
                      onTap: () {
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => taxornot()));
                      },
                      trailing: Icon(
                        Icons.info,
                        color: Color.fromARGB(255, 255, 254, 254),
                      ),
                      title: Center(
                        child: Text(
                          'For Friends',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      tileColor: Color.fromARGB(255, 126, 196, 128),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 30),
                    child: InkWell(
                      onTap: () {
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => formyself()));
                      },
                      child: ListTile(
                        trailing: Icon(
                          Icons.info,
                          color: Color.fromARGB(255, 255, 254, 254),
                        ),
                        title: Center(
                          child: Text(
                            'For Myself',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        tileColor: Color.fromARGB(255, 126, 196, 128),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 30),
                    child: InkWell(
                      onTap: () {
                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => forcouples()));
                      },
                      child: ListTile(
                        trailing: Icon(
                          Icons.info,
                          color: Color.fromARGB(255, 255, 254, 254),
                        ),
                        title: Center(
                          child: Text(
                            'For Couples',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        tileColor: Color.fromARGB(255, 126, 196, 128),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
