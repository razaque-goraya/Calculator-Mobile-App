import 'package:flutter/material.dart';

class FormsWidget extends StatefulWidget {
  const FormsWidget({super.key});

  @override
  State<FormsWidget> createState() => _FormsWidgetState();
}

class _FormsWidgetState extends State<FormsWidget> {
  String firstname = "";
  String lastname = "";
  String email = "";
  String password = "";
  final _formKey = GlobalKey<FormState>();

//----------------Function--------------
  trySubmit() {
    final isvalid = _formKey.currentState!.validate();
    _formKey.currentState!.save();
    if (isvalid) {
      submitForm();
    } else {
      return "Error";
    }
  }

  submitForm() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Day 14: Forms Widget"),
        ),
        body: Center(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: "Enter First Name"),
                    key: const ValueKey('firstname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "First Name should not be Empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: "Enter Last Name"),
                    key: const ValueKey('lastname'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Last Name should not be Empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastname = value.toString();
                    },
                  ),
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: "Enter Your Email"),
                    key: const ValueKey('email'),
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Email should not be Empty";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration:
                        const InputDecoration(hintText: "Enter New Password"),
                    key: const ValueKey('password'),
                    validator: (value) {
                      if (value.toString().length <= 5) {
                        return "Minimum length of password should be 6";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      trySubmit();
                    },
                    child: const Text("Submit"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
