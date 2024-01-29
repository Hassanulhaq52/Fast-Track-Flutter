import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   items: [
          //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.person), label: 'Person'),
          //     BottomNavigationBarItem(
          //         icon: Icon(Icons.search), label: 'Search'),
          //   ],
          // ),
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Icon(Icons.home),
                Icon(Icons.person_off_rounded),
                Icon(Icons.add),
              ],
            ),
            title: Text('Platform Specific Widgets'),
            backgroundColor: Colors.green,
            centerTitle: true,
            leading: Icon(Icons.arrow_back),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person),
              ),
            ],
          ),
          body: const TabBarView(
            children: [
              Column(children: [

                ListTile(

                  trailing: CircleAvatar(
                    child: Icon(Icons.add),
                  ),
                  title: Text('Name'),
                  subtitle: Text('This is name'),
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),

              ])

              // Center(child: Text('This is Home Screen')),
              // Center(child: Text('This is Person Screen')),
              //
              // Center(child: Text('This is Add Screen')),
              // Icon(Icons.add),
            ],
          ),
        ),
      ),
    );
  }
}
