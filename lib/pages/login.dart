import 'package:flutter/material.dart';
import 'package:uts_tpm/components/navbar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Text("Please enter NIM and nama!"),
                  SizedBox(height: 20),
                  _usernameField(),
                  SizedBox(height: 20),
                  _passwordField(),
                  SizedBox(height: 20),
                  Container(
                    child: _loginButton(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      child: TextFormField(
        controller: usernameController,
        decoration: InputDecoration(
          labelText: "Username",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      child: TextFormField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
            labelText: "Password",
            hintText: "********",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }

  Widget _loginButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          if (usernameController.text == "123200093") {
            if (passwordController.text == "afrien") {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Navbar()));
            } else {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("Password Salah!"),
                  );
                },
              );
            }
          } else {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text("Email/Password Salah!"),
                );
              },
            );
          }
        },
        child: Text("Login"),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
        ),
      ),
    );
  }
}
