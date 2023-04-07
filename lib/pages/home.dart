import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_tutorial/project/routes/app_route_constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.grey.shade400,
            child: const Center(
              child: Text("Home"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.aboutRouteName);
            },
            child: const Text('About'),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(
                MyAppRouteConstants.profileRouteName,
                params: {'username': 'sameer', 'userid': '1234'},
              );
            },
            child: const Text('Profile'),
          ),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.contactUsRouteName);
            },
            child: const Text('Contact Us'),
          ),
        ],
      ),
    );
  }
}
