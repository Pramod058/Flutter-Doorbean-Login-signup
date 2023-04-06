// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imageuploadcontainer extends StatefulWidget {
  const Imageuploadcontainer({super.key});

  @override
  _ImageuploadcontainerState createState() => _ImageuploadcontainerState();
}

class _ImageuploadcontainerState extends State<Imageuploadcontainer> {
  File? _image;

  final picker = ImagePicker();

  Future<void> _getImageFromCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _getImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _showDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose an option'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: const Text('Capture with Camera'),
                  onTap: () {
                    Navigator.of(context).pop();
                    _getImageFromCamera();
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  child: const Text('Choose from Gallery'),
                  onTap: () {
                    Navigator.of(context).pop();
                    _getImageFromGallery();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80.0,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.grey),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Stack(
          children: <Widget>[
            _image != null?
              Positioned.fill(
                child: Image.file(
                  _image!,
                  fit: BoxFit.contain,
                ),
              )
            : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Positioned.fill(
                  child: InkWell(
                    onTap: _showDialog,
                    child: const Icon(Icons.file_upload),
                  ),
                ),
                const Center(child:  Text("Upload your profile image on Here", style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black
                ),)),
                const Center(child:  Text("Prefer Size*", style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black45
                ),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
