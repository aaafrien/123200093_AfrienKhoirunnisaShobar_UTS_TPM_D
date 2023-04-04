import 'package:flutter/material.dart';

class CountTabung extends StatefulWidget {
  const CountTabung({Key? key}) : super(key: key);

  @override
  State<CountTabung> createState() => _CountTabungState();
}

class _CountTabungState extends State<CountTabung> {
  final TextEditingController _rController = TextEditingController();
  final TextEditingController _tController = TextEditingController();
  double _luas = 0;
  double _vol = 0;

  void _hitungTrapesium() {
    double r = double.parse(_rController.text);
    double t = double.parse(_tController.text);
    setState(() {
      _luas = (2 * 3.14 * r * (r + t)).roundToDouble();
      _vol = (3.14 * r * r * t).roundToDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hitung Tabung",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox.fromSize(
                    child: Image.asset(
                      'assets/images/tabung.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: TextFormField(
                        controller: _rController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Jari-jari',
                            hintText: 'input jari-jari'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: TextFormField(
                        controller: _tController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Tinggi',
                            hintText: 'input tinggi'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _hitungTrapesium,
                    child: Text("Hitung"),
                  ),
                ),
                SizedBox(height: 25),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Luas'),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 100,
                      child: Text('$_luas'),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('Volume'),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 100,
                      child: Text('$_vol'),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
