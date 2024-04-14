import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Color(0x16bcd1d0),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.zero,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                color: const Color(0x1f000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 120,
                      width: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network("https://picsum.photos/250?image=9",
                          fit: BoxFit.cover),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Myster PMF",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  //   Container(
                  //     margin: const EdgeInsets.all(0),
                  //     padding: const EdgeInsets.all(0),
                  //     width: MediaQuery.of(context).size.width,
                  //     height: 50,
                  //     decoration: BoxDecoration(
                  //       color: const Color(0x1f000000),
                  //       shape: BoxShape.rectangle,
                  //       borderRadius: BorderRadius.zero,
                  //       border:
                  //           Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       mainAxisSize: MainAxisSize.max,
                  //       children: [
                  //         Container(
                  //           margin: const EdgeInsets.all(0),
                  //           padding: const EdgeInsets.all(0),
                  //           width: 100,
                  //           height: 100,
                  //           decoration: BoxDecoration(
                  //             color: const Color(0x1f000000),
                  //             shape: BoxShape.rectangle,
                  //             borderRadius: BorderRadius.zero,
                  //             border: Border.all(
                  //                 color: const Color(0x4d9e9e9e), width: 1),
                  //           ),
                  //           //               child: Padding(
                  //           //                 padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  //           //                 child: Row(
                  //           //                   mainAxisAlignment: MainAxisAlignment.start,
                  //           //                   crossAxisAlignment: CrossAxisAlignment.center,
                  //           //                   mainAxisSize: MainAxisSize.max,
                  //           //                   children: [
                  //           //                     const Text(
                  //           //                       "Gender",
                  //           //                       textAlign: TextAlign.start,
                  //           //                       overflow: TextOverflow.clip,
                  //           //                       style: TextStyle(
                  //           //                         fontWeight: FontWeight.w500,
                  //           //                         fontStyle: FontStyle.normal,
                  //           //                         fontSize: 15,
                  //           //                         color: Color(0xff000000),
                  //           //                       ),
                  //           //                     ),
                  //           //                     Container(
                  //           //                       width: 100,
                  //           //                       height: 50,
                  //           //                       padding: const EdgeInsets.symmetric(
                  //           //                           vertical: 4, horizontal: 8),
                  //           //                       decoration: BoxDecoration(
                  //           //                         color: const Color(0xffe3e3e3),
                  //           //                         borderRadius: BorderRadius.circular(0),
                  //           //                       ),
                  //           //                       child: DropdownButton(
                  //           //                         value: "Option 1",
                  //           //                         items: ["Female", "Male"]
                  //           //                             .map<DropdownMenuItem<String>>(
                  //           //                                 (String value) {
                  //           //                           return DropdownMenuItem<String>(
                  //           //                             value: value,
                  //           //                             child: Text(value),
                  //           //                           );
                  //           //                         }).toList(),
                  //           //                         style: const TextStyle(
                  //           //                           color: Color(0xff000000),
                  //           //                           fontSize: 16,
                  //           //                           fontWeight: FontWeight.w400,
                  //           //                           fontStyle: FontStyle.normal,
                  //           //                         ),
                  //           //                         onChanged: (value) {},
                  //           //                         elevation: 8,
                  //           //                         isExpanded: true,
                  //           //                       ),
                  //           //                     ),
                  //           //                   ],
                  //           //                 ),
                  //           //               ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Daily Rewards",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0x1f000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                    padding: const EdgeInsets.all(5),
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0x1f000000),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0x1f000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: ImageIcon(
                      AssetImage("images/person.png"),
                      size: 24,
                      color: Color(0xff212435),
                    ),
                  ),
                  Text(
                    "Get Free Coins",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0x1f000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: ImageIcon(
                      AssetImage("images/person.png"),
                      size: 24,
                      color: Color(0xff212435),
                    ),
                  ),
                  Text(
                    "Donate/Remove Ads",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0x1f000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: ImageIcon(
                      AssetImage("images/person.png"),
                      size: 24,
                      color: Color(0xff212435),
                    ),
                  ),
                  Text(
                    "About Developer",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "More Apps",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 15,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0x1f000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    padding: const EdgeInsets.all(0),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0x1f000000),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              width: 200,
              height: 30,
              decoration: const BoxDecoration(
                color: Color(0x00000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
              ),
              child: const Align(
                alignment: Alignment(-0.0, 0.0),
                child: Text(
                  "Developed by Myster Pmf",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
