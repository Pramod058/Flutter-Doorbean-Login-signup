// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, deprecated_member_use
// Document upload class


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Documentuploadcontainer extends StatefulWidget {
  const Documentuploadcontainer({super.key});

  @override
  State<Documentuploadcontainer> createState() =>
      DocumentuploadcontainerState();
}

class DocumentuploadcontainerState extends State<Documentuploadcontainer> {

  @override
  Widget build(BuildContext context) {
    return 
         ContainerExample();

  }
}

class ContainerExample extends StatefulWidget {
  const ContainerExample({super.key});

  @override
  _ContainerExampleState createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  int _containerCount = 1;

  void _showMoreContainers() {
    setState(() {
      _containerCount = (_containerCount % 3) + 1;
    });
  }





   File? _image;
   File? _image2;
   File? _image3;

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
  Future<void> _getImageFromCamera2() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image2 = File(pickedFile.path);
      });
    }
  }

  Future<void> _getImageFromGallery2() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image2 = File(pickedFile.path);
      });
    }
  }
  Future<void> _getImageFromCamera3() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image3 = File(pickedFile.path);
      });
    }
  }

  Future<void> _getImageFromGallery3() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image3 = File(pickedFile.path);
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

  Future<void> _showDialog2() async {
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
                    _getImageFromCamera2();
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  child: const Text('Choose from Gallery'),
                  onTap: () {
                    Navigator.of(context).pop();
                    _getImageFromGallery2();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _showDialog3() async {
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
                    _getImageFromCamera3();
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  child: const Text('Choose from Gallery'),
                  onTap: () {
                    Navigator.of(context).pop();
                    _getImageFromGallery3();
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
    return Column(
      children: [
          Container(
        height: 50.0,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.grey),
          borderRadius: BorderRadius.circular(4.0),
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
            : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Positioned.fill(
                  child: InkWell(
                    onTap: _showDialog,
                    child: const Icon(Icons.file_upload),
                  ),
                ),
             Column(
                 mainAxisAlignment: MainAxisAlignment.center,
              children:  const [
                  Center(
                      child: Text(
                    "Upload your Citizenship Card",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                    ),
                  )),
                  Center(
                      child: Text(
                    "Prefer Size*",
                    style: TextStyle(fontSize: 14.0, color: Colors.black45),
                  )),
              ],
             ),
              ],
            ),
          ],
        )),
        const SizedBox(
          height: 20.0,
        ),
          
        if (_containerCount > 1)
            Container(
        height: 50.0,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.grey),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Stack(
          children: <Widget>[
            _image2 != null?
              Positioned.fill(
                child: Image.file(
                  _image2!,
                  fit: BoxFit.contain,
                ),
              )
            : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Positioned.fill(
                  child: InkWell(
                    onTap: _showDialog2,
                    child: const Icon(Icons.file_upload),
                  ),
                ),
             Column(
                 mainAxisAlignment: MainAxisAlignment.center,
              children:  const [
                  Center(
                      child: Text(
                     "Upload your Pan Card",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                    ),
                  )),
                  Center(
                      child: Text(
                    "Prefer Size*",
                    style: TextStyle(fontSize: 14.0, color: Colors.black45),
                  )),
              ],
             ),
              ],
            ),
          ],
        ),),
        const SizedBox(
          height: 20.0,
        ),
        if (_containerCount > 2)
            Container(
        height: 50.0,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.grey),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Stack(
          children: <Widget>[
            _image3 != null?
              Positioned.fill(
                child: Image.file(
                  _image3!,
                  fit: BoxFit.contain,
                ),
              )
            : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Positioned.fill(
                  child: InkWell(
                    onTap: _showDialog3,
                    child: const Icon(Icons.file_upload),
                  ),
                ),
             Column(
                 mainAxisAlignment: MainAxisAlignment.center,
              children:  const [
                  Center(
                      child: Text(
                    "Upload your Certificate of Guidance",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black45,
                    ),
                  )),
                  Center(
                      child: Text(
                    "Prefer Size*",
                    style: TextStyle(fontSize: 14.0, color: Colors.black45),
                  )),
              ],
             ),
              ],
            ),
          ],
        ),),
        SizedBox(
          height: 12.0,
        ),
        FloatingActionButton(
          onPressed: _showMoreContainers,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black45,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
                side: BorderSide(color: Colors.black45, width: 2),
          ),
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}