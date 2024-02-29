import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FetchDataScreen extends StatelessWidget {
  const FetchDataScreen({super.key});

  void deleteData(String docId) async {
    await FirebaseFirestore.instance.collection('Data').doc(docId).delete();
  }

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
                  child: ListTile(
                      title: Text(
                        snapshot.data!.docs[index]['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          deleteData(snapshot.data!.docs[index].id);
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      )),
                );
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
