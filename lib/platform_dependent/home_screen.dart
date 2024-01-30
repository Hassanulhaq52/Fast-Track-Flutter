import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
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
                Icon(Icons.person_off_rounded),
                Icon(Icons.add),
              ],
            ),
            title: Text('Platform Specific Widgets'),
            backgroundColor: Colors.green,
            centerTitle: true,
            leading: Icon(Icons.arrow_back),
            actions: const [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Column(children: [
               const ListTile(
                  trailing: CircleAvatar(
                    child: Icon(Icons.add),
                  ),
                  title: Text('Name'),
                  subtitle: Text('This is name'),
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),

                // Elevated Button

                ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                ),
                SizedBox(height: 30),

                // IconButton
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_a_photo_outlined)),
                SizedBox(height: 30),
                TextField(

                  decoration: InputDecoration(
                    hintText: 'Enter your Name'
                  ),

                ),
              ]),
              Column(children: [
                const ListTile(
                  trailing: CircleAvatar(
                    child: Icon(Icons.add),
                  ),
                  title: Text('Name'),
                  subtitle: Text('This is name'),
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),

                // Elevated Button

                ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                ),
                SizedBox(height: 30),

                // IconButton
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_a_photo_outlined)),
                SizedBox(height: 30),
                TextField(

                  decoration: InputDecoration(
                      hintText: 'Enter your Name'
                  ),

                ),
              ]),
              Column(children: [
                const ListTile(
                  trailing: CircleAvatar(
                    child: Icon(Icons.add),
                  ),
                  title: Text('Name'),
                  subtitle: Text('This is name'),
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),

                // Elevated Button

                ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                ),
                SizedBox(height: 30),

                // IconButton
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_a_photo_outlined)),
                SizedBox(height: 30),
                TextField(

                  decoration: InputDecoration(
                      hintText: 'Enter your Name'
                  ),

                ),
              ]),Column(children: [
                const ListTile(
                  trailing: CircleAvatar(
                    child: Icon(Icons.add),
                  ),
                  title: Text('Name'),
                  subtitle: Text('This is name'),
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),

                // Elevated Button

                ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                ),
                SizedBox(height: 30),

                // IconButton
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_a_photo_outlined)),
                SizedBox(height: 30),
                TextField(

                  decoration: InputDecoration(
                      hintText: 'Enter your Name'
                  ),

                ),
              ]),
              Column(children: [
                const ListTile(
                  trailing: CircleAvatar(
                    child: Icon(Icons.add),
                  ),
                  title: Text('Name'),
                  subtitle: Text('This is name'),
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),

                // Elevated Button

                ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                ),
                SizedBox(height: 30),

                // IconButton
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_a_photo_outlined)),
                SizedBox(height: 30),
                TextField(

                  decoration: InputDecoration(
                      hintText: 'Enter your Name'
                  ),

                ),
              ]),



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
