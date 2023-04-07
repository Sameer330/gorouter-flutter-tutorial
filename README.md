# GoRouter Tutorial

Flutter Web Project to learn GoRouter Package for Page Navigation in Web Application.

!! This repo is just for my reference. This application is just for understanding Page Navigation in Flutter Web.

Source: [Flutter GoRouter](https://youtu.be/QwlrHjBYQ2M)

### To Run this project

Run These Commands: 

* Clone Package
`git clone https://github.com/Sameer330/gorouter-flutter-tutorial.git`

* Shift to project directory
`cd gorouter_tutorial`

* Get All Packages
`flutter pub get`

* Run main.dart
`flutter run lib/main.dart`

### Packages Used (From [pub](https://pub.dev))
1. GoRouter - [go_router](https://pub.dev/packages/go_router)
> For Page Navigation with routes
2. GetIt - [get_it](https://pub.dev/packages/get_it)
> For Creating Singleton Instances of GoRouter

### Common Issue
* GetIt package helps in creating singleton instances of a class object.
* When testing the application on a browser, if get_it is not used, error is caused when hot reloaded multiple times.
* Cause: Multiple instances of GoRouter are created with each hot reload.
* Fix: Add GetIt package, create a singleton instance of GoRouter, Initialise in void main().
