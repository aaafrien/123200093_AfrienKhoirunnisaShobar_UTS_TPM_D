import 'package:flutter/material.dart';
import 'package:uts_tpm/pages/login.dart';
import 'package:uts_tpm/pages/profiledetail.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget _profile() {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(150),
                  child: Image.asset(
                    'assets/images/afrien.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Afrien Khoirunnisa Shobar",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "123200093",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileDetails(),
                        ),
                      );
                    },
                    child: Text("See detail"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      showModal(context);
                    },
                    child: Text("Logout"),
                  ),
                ],
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
      body: _profile(),
    );
  }

  void showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: const Text('Are you sure want to Logout?'),
        actions: <TextButton>[
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                  (route) => false);
            },
            child: const Text('Logout'),
          )
        ],
      ),
    );
  }
}
