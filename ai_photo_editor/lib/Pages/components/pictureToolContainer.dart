import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PictureToolContainer extends StatelessWidget {
  // const PictureToolContainer({Key? key}) : super(key: key);

  final String imgPath;
  final String text1;
  final String text2;
  final String toolpath;
  final String details;

  const PictureToolContainer({
    super.key,
    required this.imgPath,
    required this.text1,
    required this.text2,
    required this.toolpath,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).go(toolpath, extra: details);
      },
      child: Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(8),
        width: 140,
        // height: 140,
        decoration: BoxDecoration(
          color: const Color(0x00000000),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.only(bottom: 5),
              width: 130,
              height: 80,
              decoration: BoxDecoration(
                // color: const Color(0x1f000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    10.0), // Apply border radius to the image
                child: Image(
                  image: AssetImage(imgPath),
                  // height: 120,
                  // width: 140,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              text1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
            ),
            Text(
              text2,
              textAlign: TextAlign.start,
              overflow: TextOverflow.clip,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
