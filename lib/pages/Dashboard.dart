import 'package:flutter/material.dart';
import 'package:signup/screens/home_screen.dart';
import 'package:signup/drawer.dart';

class Dashboard extends DrawerContent {
  Dashboard({Key key, this.title});
  String title;
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hemdee"),
      ),
      floatingActionButton: widget.onMenuPressed(),
    );
  }
}

