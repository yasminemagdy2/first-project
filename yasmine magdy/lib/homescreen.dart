import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String UserName;
  const HomePage({super.key, required this.UserName});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Text("welcome \n ${widget.UserName}"),
      ),
    );
  }
}
