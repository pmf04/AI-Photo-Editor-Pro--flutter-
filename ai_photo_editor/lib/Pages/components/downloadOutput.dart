import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageDownloader {
  final String imageUrl;

  ImageDownloader({required this.imageUrl});

  Future<void> downloadImage() async {
    final PermissionStatus status = await Permission.storage.request();

    if (status.isGranted) {
      final response = await http.get(Uri.parse(imageUrl));
      final Directory? directory = await getExternalStorageDirectory();
      final File file = File('${directory?.path}/AI Photo Editor/image.jpg');

      if (!await file.parent.exists()) {
        await file.parent.create(recursive: true);
      }

      await file.writeAsBytes(response.bodyBytes);
    } else {
      throw Exception('Permission denied');
    }
  }
}
