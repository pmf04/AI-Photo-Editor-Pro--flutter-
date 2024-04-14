import 'package:ai_photo_editor/Pages/components/downloadOutput.dart';
import 'package:ai_photo_editor/Pages/components/imagePicker.dart';
import 'package:ai_photo_editor/Pages/tmp.dart';
import 'package:cloudinary_flutter/cloudinary_context.dart';
import 'package:cloudinary_flutter/cloudinary_object.dart';
import 'package:cloudinary_flutter/image/cld_image.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:cloudinary_url_gen/transformation/effect/effect.dart';
import 'package:cloudinary_url_gen/transformation/resize/resize.dart';
import 'package:cloudinary_url_gen/transformation/transformation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RemoveBackground extends StatefulWidget {
  const RemoveBackground({Key? key}) : super(key: key);

  @override
  _RemoveBackgroundState createState() => _RemoveBackgroundState();
}

class _RemoveBackgroundState extends State<RemoveBackground> {
  String imgPath = "";
  String? _imageUrl;

  // CloudinaryContext.cloudinary =
  //     Cloudinary.fromCloudName(cloudName: 'dqnihp6fn');

  Future<void> _uploadImage() async {
    final url = Uri.parse('https://api.cloudinary.com/v1_1/dqnihp6fn/upload');
    final request = http.MultipartRequest('POST', url)
      ..fields['upload_preset'] = 'aiphotoeditor'
      ..files.add(await http.MultipartFile.fromPath('file', imgPath));
    final response = await request.send();
    if (response.statusCode == 200) {
      final responseData = await response.stream.toBytes();
      final responseString = String.fromCharCodes(responseData);
      final jsonMap = jsonDecode(responseString);
      setState(() {
        final url = jsonMap['url'];
        _imageUrl = url;
        print(_imageUrl);
        Fluttertoast.showToast(
          msg: _imageUrl ?? "not uploaded",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffffffff),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "Remove Background",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 18,
            color: Color(0xff000000),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            GoRouter.of(context).go("/Home", extra: "");
          },
          child: Container(
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xff212435),
              size: 24,
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // decoration: BoxDecoration(
        //   color: const Color(0x1f000000),
        //   shape: BoxShape.rectangle,
        //   borderRadius: BorderRadius.zero,
        //   border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              // margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              // height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
              child: ImagePickerWidget(
                initialImagePath: null, // Set the initial image path to null
                onImageSelected: (String? imagePath) async {
                  // Use the selected imagePath here
                  imgPath = imagePath ?? "";
                  _uploadImage();
                  print('Selected Image Path: $imagePath');
                  return imagePath; // Return the selected imagePath
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Background color
                    foregroundColor: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      // You can customize the shape of the button here
                    ),
                    elevation: 3, // Button shadow
                  ),
                  child: Text(
                    'Remove Background',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            // Container(
            //   child: SizedBox(
            //       width: 200,
            //       height: 140,
            //       // Add a Cloudinary CldImageWidget that wraps Flutter's authenticated Image widget.
            //       child: CldImageWidget(
            //           publicId: 'cld-sample',
            //           transformation: Transformation()
            //             // Resize to 250 x 250 pixels using the 'fill' crop mode.
            //             ..resize(Resize.fill()
            //               ..width(250)
            //               ..height(250))
            //             // Add the 'sepia' effect.
            //             ..effect(Effect.sepia()))),
            // ),
            Container(
              width: 300,
              height: 200,
              child: Column(children: <Widget>[
                _imageUrl == null
                    ? Text('No image selected.')
                    : Image.network(
                        _imageUrl ?? "",
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
              ]),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ImageDownloader(imageUrl: imgPath)
                          .downloadImage()
                          .then((_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text('Image downloaded successfully')),
                        );
                      }).catchError((error) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(error.toString())),
                        );
                      });
                    },
                    child: Text('Download Image'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// class RemoveBackground extends StatelessWidget {
//   String imgPath = "";
//   String? _imageUrl;
  // CloudinaryContext.cloudinary =
  //     Cloudinary.fromCloudName(cloudName: 'dqnihp6fn');

  // Future<void> _uploadImage() async {
  //   final url = Uri.parse('https://api.cloudinary.com/v1_1/dqnihp6fn/upload');
  //   final request = http.MultipartRequest('POST', url)
  //     ..fields['upload_preset'] = 'aiphotoeditor'
  //     ..files.add(await http.MultipartFile.fromPath('file', imgPath));
  //   final response = await request.send();
  //   if (response.statusCode == 200) {
  //     final responseData = await response.stream.toBytes();
  //     final responseString = String.fromCharCodes(responseData);
  //     final jsonMap = jsonDecode(responseString);
  //     setState(() {
  //       final url = jsonMap['url'];
  //       _imageUrl = url;
  //     });
  //   }
  // }
// _imageFile!.path

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
