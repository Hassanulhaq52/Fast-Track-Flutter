import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FetchDataScreen extends StatelessWidget {
  const FetchDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Data').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return Card(
                    elevation: 5.0,
                    color: Colors.blue,
                    child: Center(
                        child: Text(
                      snapshot.data!.docs[index]['name'],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    )));
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
