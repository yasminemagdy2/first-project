import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/widgets/button.dart';
import 'package:helloworld/homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController UserNamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset("assets/images/flutter.png"),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: UserNamecontroller,
                  decoration: InputDecoration(labelText: "Email"),
                  validator: (value) {
                    if (value!.isNotEmpty && value!.contains("@")) {
                      return null;
                    } else {
                      return "add valid email";
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "password"),
                  validator: (value) {
                    if (value!.length < 8) {
                      return "Add Vaild password";
                    }
                  },
                ),
              ),

              MyCustomButtonState(
                label: "LOG IN",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(
                                UserName: UserNamecontroller.text,
                              )),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('login done')));
                  }
                },
              ),
              MyCustomButtonState(
                label: " No Account? Sign Up ",
                onPressed: () {},
              ),
              // onPressed: () {}, child: Container(height: 50, width: 200, child: Center(child: Text("login"))))
            ],
          ),
        ),
      ),
    );
  }
}
