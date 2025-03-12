import 'package:flutter/material.dart';
import 'package:massenger_ui/massenger.dart';

void main() {
  runApp(MassengerUI());
}

class MassengerUI extends StatefulWidget {
  const MassengerUI({super.key});

  @override
  State<MassengerUI> createState() => _MassengerUIState();
}

class _MassengerUIState extends State<MassengerUI> {
  @override
  bool x = true;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    hintText: "Enter Email",
                    prefixIcon: Icon(Icons.mail),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: x,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            x = !x;
                          });
                        },
                        icon: x == true
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off)),
                    labelText: "Password",
                    hintText: "password",
                    prefixIcon: Icon(Icons.security_outlined),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Massenger();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
