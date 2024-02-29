import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateDataScreen extends StatefulWidget {
  UpdateDataScreen({super.key, required this.docID, required this.name});

  final String name;
  final String docID;

  @override
  State<UpdateDataScreen> createState() => _UpdateDataScreenState();
}

class _UpdateDataScreenState extends State<UpdateDataScreen> {
  String? updatedName;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updatedName = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              updatedName = value;
            },
          ),
          ElevatedButton(
              onPressed: () {
                FirebaseFirestore.instance
                    .collection('Data')
                    .doc(widget.docID)
                    .update({'name': updatedName});
                Navigator.pop(context);
              },

              child: Text('Update'))
        ],
      ),
    );
  }
}
