import 'package:flutter/material.dart';
import 'package:signup/drawer.dart';

// ignore: must_be_immutable
class SuperDrawer extends DrawerContent {
  SuperDrawer({Key key, this.body});
  final Widget body;
  @override
  _SuperDrawerState createState() => _SuperDrawerState();
}

class _SuperDrawerState extends State<SuperDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: widget.onMenuPressed,
                ),
              ],
            ),
            Expanded(child: widget.body),
          ],
        ),
      ),
    );
  }
}
