import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Image.asset('assets/images/afrien.jpg'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 430,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 10,
                      blurRadius: 20,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ]),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(25, 400, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Afrien Khoirunnisa Shobar",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "123200093",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 25),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.cake_rounded,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tempat, Tanggal Lahir",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Sleman, 29 April 2002"),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.book_rounded,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kelas",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("TPM IF-D"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.school_rounded,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Harapan/Cita-cita Kedepan",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("To be UI/UX Designer"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
