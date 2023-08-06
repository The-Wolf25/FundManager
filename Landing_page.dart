import 'package:equal/Screens/options_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class land extends StatefulWidget {
  const land({Key? key}) : super(key: key);

  @override
  State<land> createState() => _landState();
}

class _landState extends State<land> {
  final Controller = PageController();
  bool islastpg = false;
  void dispose() {
    Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: Container(
          child: PageView(
            controller: Controller,
            onPageChanged: (index) {
              setState(() => islastpg = index == 2);
            },
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 140),
                        child: Container(
                          alignment: Alignment.center,
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            'Assets/images/pic01.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 30, left: 12),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'A one stop to manage all types of your funds !',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                color: Color.fromARGB(255, 172, 240, 175),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 110),
                        child: Container(
                          alignment: Alignment.center,
                          width: 200,
                          height: 200,
                          child: Image.asset(
                            'Assets/images/pic02.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 30, left: 12),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Whether It is a date, outing with friends or managing funds for yourself, we got you covered',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                color: Color.fromARGB(255, 240, 238, 172),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 140),
                        child: Container(
                          alignment: Alignment.center,
                          width: 300,
                          height: 300,
                          child: Image.asset(
                            'Assets/images/pic03.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                color: Color.fromARGB(255, 172, 240, 229),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Color.fromARGB(0, 144, 66, 66),
        height: 60,
        child: Center(
            child: (islastpg)
                ? InkWell(
                    splashColor: Color.fromARGB(255, 204, 227, 205),
                    onTap: (() async {
                      setState(() {});
                      await Future.delayed(Duration(milliseconds: 500));
                      await Navigator.push(context,
                          MaterialPageRoute(builder: (context) => options()));
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      child: Text(
                        'Start Eq=al',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                : SmoothPageIndicator(
                    controller: Controller,
                    count: 3,
                    effect: WormEffect(
                        spacing: 15,
                        activeDotColor: Colors.green,
                        dotColor: Color.fromARGB(255, 122, 121, 121),
                        dotHeight: 15,
                        dotWidth: 15,
                        strokeWidth: 1),
                  )),
      ),
    );
  }
}
