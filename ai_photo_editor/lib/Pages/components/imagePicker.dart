import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  //   final void Function(String? imagePath) onImageSelected;

  // const ImagePickerWidget({Key? key, required this.onImageSelected}) : super(key: key);
  final String? initialImagePath;
  final Future<String?> Function(String? imagePath) onImageSelected;

  const ImagePickerWidget(
      {Key? key, this.initialImagePath, required this.onImageSelected})
      : super(key: key);

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File? _image;

  String? _imagePath; // New variable to store the image path

  @override
  void initState() {
    super.initState();
    _imagePath = widget.initialImagePath;
  }

  Future<void> getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        // _imagePath = pickedFile.path;
        _image = File(pickedFile.path);
      });
      final String? imagePath = await widget.onImageSelected(_image!.path);
      if (imagePath != null) {
        setState(() {
          _image = File(imagePath);
        });
      }
    }
  }

  // Future getImage() async {
  //   // final _storagePermission = await Permission.photos.request();
  //   // if (_storagePermission.isGranted) {
  //   final pickedFile =
  //       await ImagePicker().pickImage(source: ImageSource.gallery);
  //   if (pickedFile != null) {
  //     setState(() {
  //       _image = File(pickedFile.path);
  //     });
  //   }
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          _image == null
              ? Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.only(left: 20, right: 20),
                  color: Color.fromARGB(
                      255, 240, 240, 240), // Parent red container
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      // color: Colors.green, // Child green container
                      child: Container(
                        child: Image.asset(
                          "images/aiGirl.jpg",
                          fit: BoxFit.fitHeight,
                          // width: 200,
                        ),
                        // You can place child widgets here if needed
                      ),
                    ),
                  ),
                )
              : Container(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  // padding: EdgeInsets.only(left: 20, right: 20),
                  color: Color.fromARGB(
                      255, 240, 240, 240), // Parent red container
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      padding: EdgeInsets.only(left: 20, right: 20),
                      // color: Colors.green, // Child green container
                      child: Container(
                        child: Image.file(_image!, fit: BoxFit.cover),
                        // You can place child widgets here if needed
                      ),
                    ),
                  ),
                ),
          Positioned(
            // child: Image.file(_image!, fit: BoxFit.cover)),
            bottom: 1, // Adjusted to slightly above the bottom
            child: FloatingActionButton(
              onPressed: getImage,
              child: Container(
                padding: const EdgeInsets.all(5),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.add_a_photo),
                    Text(
                      "Select Photo",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (_image != null)
            Positioned(
              right: 0,
              top: -10,
              child: IconButton(
                icon: const Icon(Icons.close, size: 30, color: Colors.red),
                onPressed: () {
                  setState(() {
                    _image = null;
                  });
                },
              ),
            ),
        ],
      ),
    );
  }
}
