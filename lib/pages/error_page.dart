import 'package:flutter/material.dart';

class Error extends StatefulWidget {
  const Error({Key? key}) : super(key: key);

  @override
  State<Error> createState() => _ErrorState();
}

class _ErrorState extends State<Error> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.orange.shade400,
        child: const Center(
          child: Text("Error Page"),
        ),
      ),
    );
  }
}
