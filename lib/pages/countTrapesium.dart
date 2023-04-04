import 'package:flutter/material.dart';

class CountTrapesium extends StatefulWidget {
  const CountTrapesium({Key? key}) : super(key: key);

  @override
  State<CountTrapesium> createState() => _CountTrapesiumState();
}

class _CountTrapesiumState extends State<CountTrapesium> {
  final TextEditingController _aController = TextEditingController();
  final TextEditingController _bController = TextEditingController();
  final TextEditingController _cController = TextEditingController();
  final TextEditingController _dController = TextEditingController();
  final TextEditingController _tController = TextEditingController();
  double _kel = 0;
  double _luas = 0;

  void _hitungTrapesium() {
    double a = double.parse(_aController.text);
    double b = double.parse(_bController.text);
    double c = double.parse(_cController.text);
    double d = double.parse(_dController.text);
    double t = double.parse(_tController.text);
    setState(() {
      _kel = (a + b + c + d).roundToDouble();
      _luas = (1 / 2 * (b + d) * t).roundToDouble();
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
                  "Hitung Trapesium",
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
                      'assets/images/trapesium.png',
                      fit: BoxFit.cover,
                      width: 200,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: TextFormField(
                        controller: _aController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'AB',
                            hintText: 'input AB'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: TextFormField(
                        controller: _bController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'BC',
                            hintText: 'input BC'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: TextFormField(
                        controller: _cController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'CD',
                            hintText: 'input CD'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: TextFormField(
                        controller: _dController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'DA',
                            hintText: 'input DA'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
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
                    Text('Keliling'),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 100,
                      child: Text('$_kel'),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
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
