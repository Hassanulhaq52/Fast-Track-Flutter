import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: const Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('Hitan'),
              accountEmail: Text('Hitan@gmail.com'),
              currentAccountPicture: CircleAvatar(child: Icon(Icons.person))),
          ListTile(
            title: Text('Inbox'),
            leading: Icon(Icons.mail),
          ),
          ListTile(
            title: Text('Primary'),
            leading: Icon(Icons.stay_primary_portrait),
          ),
          ListTile(
            title: Text('Social'),
            leading: Icon(Icons.people),
          ),
          ListTile(
            title: Text('Promotions'),
            leading: Icon(Icons.local_offer),
          ),
          ListTile(
            title: Text('Spam'),
            leading: Icon(Icons.warning),
          ),
          ListTile(
            title: Text('Starred'),
            leading: Icon(Icons.star),
          ),
        ],
      )),
      body: Center(
        child: Text('This is Drawer'),
      ),
    );
  }
}
