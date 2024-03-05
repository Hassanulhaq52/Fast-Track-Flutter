import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

import 'fetch_image_screen.dart';

class UpdateImageScreen extends StatefulWidget {
  String id;
  String name;
  String userImage;

  UpdateImageScreen({
    super.key,
    required this.id,
    required this.name,
    required this.userImage,
  });

  @override
  State<UpdateImageScreen> createState() =>
      _UpdateImageScreenState(name: name, userImage: userImage, id: id);
}

class _UpdateImageScreenState extends State<UpdateImageScreen> {
  String id;
  String name;
  String userImage;

  _UpdateImageScreenState({
    required this.id,
    required this.name,
    required this.userImage,
  });

  File? userProfile;

  String userName = '';

  void updateWithImage() async {
    // String userID = const Uuid().v1();
    UploadTask uploadTask = FirebaseStorage.instance
        .ref()
        .child("User-Image")
        .child(widget.id)
        .putFile(userProfile!);
    TaskSnapshot taskSnapshot = await uploadTask;
    String userImage = await taskSnapshot.ref.getDownloadURL();
    dataUpdate(imgurl: userImage, id: widget.id);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FetchImageScreen(),
        ));
  }

  // void dataUpdate({String? imgurl, String? id}) async {
  //   await FirebaseFirestore.instance
  //       .collection("userImageData")
  //       .doc(id)
  //       .update({
  //     "User-ID": id,
  //     "User-Image": imgurl,
  //     "User-Name": userName,
  //   });
  // }

  void dataUpdate({String? imgurl, String? id}) async {
    DocumentReference docRef =
    FirebaseFirestore.instance.collection("userImageData").doc(id);

    // Check if the document exists
    DocumentSnapshot doc = await docRef.get();
    if (doc.exists) {
      // Document exists, perform the update
      await docRef.update({
        "User-ID": id,
        "User-Image": imgurl,
        "User-Name": userName,
      });
    } else {
      // Document not found, handle accordingly (throw an error, show a message, etc.)
      print("Document with ID $id not found");
      // You can throw an exception or show a message to handle this case
    }
  }



  @override
  void initState() {
    // TODO: implement initState
    userName = widget.name;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                XFile? selectedImage =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                if (selectedImage != null) {
                  File convertedImage = File(selectedImage!.path);
                  setState(() {
                    userProfile = convertedImage;
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Image Not Selected")));
                }
              },
              child: userProfile == null
                  ? CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                      backgroundImage: NetworkImage(userImage),
                    )
                  : CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                      backgroundImage:
                          userProfile != null ? FileImage(userProfile!) : null,
                    ),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                userName = value;
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  updateWithImage();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FetchImageScreen(),
                      ));
                },
                child: const Text("Update"))
          ],
        ),
      ),
    );
  }
}
