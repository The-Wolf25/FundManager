import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class appbarr extends StatefulWidget {
  const appbarr({Key? key}) : super(key: key);

  @override
  State<appbarr> createState() => _appbarrState();
}

class _appbarrState extends State<appbarr> {
  @override
  Size get PreferredSize => const Size.fromHeight(kToolbarHeight);
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 126, 196, 128),
      centerTitle: true,
      title: Text(
        'Eq=al',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
