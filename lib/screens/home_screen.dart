import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup/drawer.dart';
import 'package:signup/pages/Dashboard.dart';
import 'package:signup/widget/super_drawer_maker.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  HiddenDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = HiddenDrawerController(
      initialPage: SuperDrawer(
        body: Center(
          child: Text('home'),
        ),
      ),
      items: [
        DrawerItem(
          text: Text('Home', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.home, color: Colors.white),
          page: SuperDrawer(
            body: Center(
              child: Text('home'),
            ),
          ),
        ),
        DrawerItem(
          text: Text(
            'Gallery',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.photo_album, color: Colors.white),
          page: SuperDrawer(
            body: Center(
              child: Text('gallery'),
            ),
          ),
        ),
        DrawerItem(
          text: Text(
            'Favorites',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.favorite, color: Colors.white),
          page: SuperDrawer(
            body: Center(
              child: Text('fav'),
            ),
          ),
        ),
        DrawerItem(
          text: Text(
            'Notification',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.notifications, color: Colors.white),
          page: SuperDrawer(
            body: Center(
              child: Text('notification'),
            ),
          ),
        ),
        DrawerItem(
          text: Text(
            'Invite',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.insert_invitation, color: Colors.white),
          page: SuperDrawer(
            body: Center(
              child: Text('invite'),
            ),
          ),
        ),
        DrawerItem(
          text: Text(
            'SETTINGS',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.settings, color: Colors.white),
          page: SuperDrawer(
            body: Center(
              child: Text('settings'),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HiddenDrawer(
        controller: _drawerController,
        header: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      'https://scontent.fktm7-1.fna.fbcdn.net/v/t1.0-9/82329578_945913889138731_3990029217893974016_o.jpg?_nc_cat=110&_nc_sid=09cbfe&_nc_ohc=-v-Gru-65UgAX8QfObI&_nc_ht=scontent.fktm7-1.fna&oh=97e3c3d49ca37a4fbe39ec7198967706&oe=5F8EEDB0'),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Siddhartha joshi',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.deepPurple[500], Colors.purple[500], Colors.purple],
            // tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}
