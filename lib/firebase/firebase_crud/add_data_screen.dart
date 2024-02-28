import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:platform_specific/firebase/firebase_crud/fetch_data_screen.dart';

class AddDataScreen extends StatelessWidget {
  AddDataScreen({super.key});

  String? name;

  static String collectionName = 'Data';

  CollectionReference info =
      FirebaseFirestore.instance.collection(collectionName);

  Future<dynamic> getData() {
    return info.add({'name': name});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              name = value;
            },
          ),
          ElevatedButton(
              onPressed: () {
                getData();
                Navigator.push(context, MaterialPageRoute(builder: (context) => FetchDataScreen(),));
              },
              child: Text('Add'))
        ],
      ),
    );
  }
}
