import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String username;
  final String userid;
  const Profile({Key? key, required this.username, required this.userid})
      : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.deepOrange.shade400,
      body: Column(
        children: [
          Container(
            child: const Center(
              child: Text("Profile"),
            ),
          ),
          Text("Username: ${widget.username}"),
          Text("User ID: ${widget.userid}")
        ],
      ),
    );
  }
}
