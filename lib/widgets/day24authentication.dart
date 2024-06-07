import 'package:fa002/functions/authFunctions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Day24Authentication extends StatefulWidget {
  const Day24Authentication({super.key});

  @override
  State<Day24Authentication> createState() => _Day24AuthenticationState();
}

class _Day24AuthenticationState extends State<Day24Authentication> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  String username = "";
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 24: Email/pass Auth"),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                      key: ValueKey('username'),
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                      ),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return "Username is too small";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(
                  hintText: "Enter Email",
                ),
                validator: (value) {
                  if (!(value.toString().contains("@"))) {
                    return "Invalid Email";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('password'),
                decoration: InputDecoration(
                  hintText: "Enter Password",
                ),
                validator: (value) {
                  if (value.toString().length < 5) {
                    return "Password is too small";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                        isLogin
                            ? signin(email, password)
                            : signup(email, password);
                      }
                    },
                    child: isLogin
                        ? Text(
                            "Log In",
                            style: TextStyle(color: Colors.white),
                          )
                        : Text(
                            style: TextStyle(color: Colors.white),
                            "Sign Up",
                          )),
              ),
              SizedBox(
                height: 2,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: isLogin
                      ? Text("Don't have an account? Sign Up")
                      : Text("Already Signed Up? Just Log in"))
            ],
          ),
        ),
      ),
    );
  }
}
