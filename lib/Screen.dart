import 'package:flutter/material.dart';
import 'Content/contact.dart';
import 'Content/galery.dart';
import 'Content/portofolio.dart';
import 'Content/profile.dart';
import 'Content/setting.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Home", style: TextStyle(color: Colors.white)),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.add_call),
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => contact()),
                      )
                    }),
            IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => profile()),
                      )
                    })
          ],
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
            const Color(0xFF3366FF),
            const Color(0xFF00CCFF),
            const Color(0xFF6A98F6),
          ])))),
      drawer: DrawerWidget(),
      body: Container(
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          image: DecorationImage(image: AssetImage('img/WP.jpg'), fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.account_circle,
              text: 'Profile',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile()),
                );
              }),
          _drawerItem(
              icon: Icons.camera_alt_outlined,
              text: 'PortoFolio',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => portofolio()),
                );
              }),
          _drawerItem(
              icon: Icons.add_call,
              text: 'Contact Us',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => contact()),
                );
              }),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Desprictions",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
              icon: Icons.settings,
              text: 'Setting',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => setting()),
                );
              }),
          _drawerItem(
              icon: Icons.collections_outlined,
              text: 'Galery',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => galery()),
                );
              }),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage("img/Kurumi.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      accountName: Text("Teddy Latief Miftahur Rizqi", style: TextStyle(color: Colors.white)),
      accountEmail: Text("teddylatief0009@gmail.com", style: TextStyle(color: Colors.white)),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.cyan,
        Colors.indigoAccent,
      ])),
    );
  }

  Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
