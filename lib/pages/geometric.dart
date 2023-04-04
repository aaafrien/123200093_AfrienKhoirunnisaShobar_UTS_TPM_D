import 'package:flutter/material.dart';
import 'package:uts_tpm/pages/countTabung.dart';
import 'package:uts_tpm/pages/countTrapesium.dart';

class Geometric extends StatefulWidget {
  const Geometric({Key? key}) : super(key: key);

  @override
  State<Geometric> createState() => _GeometricState();
}

class _GeometricState extends State<Geometric> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Card(
                color: Colors.pink,
                child: Container(
                  padding: EdgeInsets.all(25),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trapesium",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        "Hitung Keliling dan Luas",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CountTrapesium()));
              },
            ),
            SizedBox(height: 25),
            InkWell(
              child: Card(
                color: Colors.pink,
                child: Container(
                  padding: EdgeInsets.all(25),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tabung",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        "Hitung Luas dan Volume",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CountTabung()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
