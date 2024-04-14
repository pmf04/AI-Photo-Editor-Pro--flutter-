// Import the Cloudinary packages.
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:cloudinary_flutter/image/cld_image.dart';
import 'package:cloudinary_flutter/cloudinary_context.dart';
import 'package:cloudinary_url_gen/transformation/effect/effect.dart';
import 'package:cloudinary_url_gen/transformation/resize/resize.dart';
import 'package:cloudinary_url_gen/transformation/transformation.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  CloudinaryContext.cloudinary =
      Cloudinary.fromCloudName(cloudName: 'dqnihp6fn');
  var data = await upload();
}

upload() async {
  var resp = await http.post(Uri.parse(
      'https://api.cloudinary.com/v1_1/<cloud_name>/upload?file=https://cloudinary-devs.github.io/cld-docs-assets/assets/images/<file_name>&upload_preset=<upload_preset>&api_key=<api_key>&public_id=<public_id>'));
  var data = json.decode(resp.body);
  return data;
}

// Create a Cloudinary instance and set your cloud name.
// void main() {
//   CloudinaryContext.cloudinary =
//       Cloudinary.fromCloudName(cloudName: 'dqnihp6fn');
//   runApp(App());
// }

// Add a Flutter StatelessWidget.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
              width: 200,
              height: 140,
              // Add a Cloudinary CldImageWidget that wraps Flutter's authenticated Image widget.
              child: CldImageWidget(
                  publicId: 'cld-sample',
                  transformation: Transformation()
                    // Resize to 250 x 250 pixels using the 'fill' crop mode.
                    ..resize(Resize.fill()
                      ..width(250)
                      ..height(250))
                    // Add the 'sepia' effect.
                    ..effect(Effect.sepia()))),
        ),
      ),
    );
  }
}
