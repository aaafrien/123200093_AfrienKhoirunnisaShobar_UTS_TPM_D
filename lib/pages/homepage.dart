import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget _menu() {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(25),
                width: MediaQuery.of(context).size.width,
                height: 150,
                alignment: Alignment.bottomLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Afrien",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Welcome back!",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Explore our features :"),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          child: Card(
                            child: Container(
                              width: 160,
                              height: 160,
                              padding: EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.square_foot_rounded,
                                      size: 50, color: Colors.pink),
                                  SizedBox(height: 10),
                                  Text("Geometrics"),
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(
                          child: Card(
                            child: Container(
                              width: 160,
                              height: 160,
                              padding: EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.calendar_today_rounded,
                                      size: 40, color: Colors.pink),
                                  SizedBox(height: 10),
                                  Text("Calendar"),
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(12)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _menu(),
    );
  }
}
