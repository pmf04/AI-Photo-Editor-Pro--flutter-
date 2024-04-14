import 'package:ai_photo_editor/Pages/constants/colors.dart';
import 'package:flutter/material.dart';

class ImageGenerator extends StatelessWidget {
  const ImageGenerator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false, // removes the default back button
          elevation: 0, // removes shadow
          backgroundColor:
              AppColors.appbarColor, // sets background color to transparent
          titleSpacing: 0, // removes the default spacing
          title: Container(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.account_circle),
                  onPressed: () {},
                ),
                const Row(
                  children: <Widget>[
                    Text('500'),
                    SizedBox(width: 10), // Space between text and icon
                    Icon(Icons.currency_bitcoin), // Custom icon
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: const Align(
                    alignment: Alignment(-0.1, 0.0),
                    child: Text(
                      "Generate Images",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        textAlign: TextAlign.start,
                        maxLines: 4,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide: const BorderSide(
                                color: Color(0xff000000), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide: const BorderSide(
                                color: Color(0xff000000), width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            // borderSide: const BorderSide(
                            //     color: Color(0xff000000), width: 1),
                          ),
                          hintText: "Enter your prompt",
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                          filled: false,
                          fillColor: const Color(0xfff2f2f3),
                          isDense: false,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 0),
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              color: const Color(0xff0fa7d1),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                // side: const BorderSide(
                                //     color: Color(0xff808080), width: 1),
                              ),
                              padding: const EdgeInsets.all(16),
                              textColor: AppColors.buttonTextColor,
                              height: 40,
                              minWidth: 70,
                              child: const Text(
                                "Example",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: MaterialButton(
                                onPressed: () {},
                                color: const Color(0xff0ea5ce),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  // side: const BorderSide(
                                  //     color: Color(0xff808080), width: 1),
                                ),
                                padding: const EdgeInsets.all(16),
                                textColor: AppColors.buttonTextColor,
                                height: 40,
                                minWidth: 70,
                                child: const Text(
                                  "Generate",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(0),
                              padding: const EdgeInsets.all(0),
                              width: 140,
                              height: 160,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(0),
                                    padding: const EdgeInsets.all(0),
                                    width: 200,
                                    height: 130,
                                    color: AppColors.imgIconBgColor,
                                    child: const Icon(
                                      Icons.image,
                                      size: 100,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(0),
                                    padding: const EdgeInsets.all(0),
                                    width: 200,
                                    height: 20,
                                    color: AppColors.buttonColor,
                                    child: Align(
                                      alignment: const Alignment(-0.0, 0.0),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: AppColors.buttonColor,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          // side: const BorderSide(
                                          //     color: Color(0xff808080), width: 1),
                                        ),
                                        // padding: const EdgeInsets.all(16),
                                        textColor: AppColors.buttonTextColor,
                                        // height: 40,
                                        minWidth: 200,
                                        child: const Text(
                                          "Download",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(0),
                              padding: const EdgeInsets.all(0),
                              width: 140,
                              height: 160,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(0),
                                    padding: const EdgeInsets.all(0),
                                    width: 200,
                                    height: 130,
                                    color: AppColors.imgIconBgColor,
                                    child: const Icon(
                                      Icons.image,
                                      size: 100,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(0),
                                    padding: const EdgeInsets.all(0),
                                    width: 200,
                                    height: 20,
                                    color: AppColors.buttonColor,
                                    child: Align(
                                      alignment: const Alignment(-0.0, 0.0),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: AppColors.buttonColor,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          // side: const BorderSide(
                                          //     color: Color(0xff808080), width: 1),
                                        ),
                                        // padding: const EdgeInsets.all(16),
                                        textColor: AppColors.buttonTextColor,
                                        // height: 40,
                                        minWidth: 200,
                                        child: const Text(
                                          "Download",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisSize: MainAxisSize.max,
                      //   children: [
                      //     Container(
                      //       margin: const EdgeInsets.all(0),
                      //       padding: const EdgeInsets.all(0),
                      //       width: 200,
                      //       height: 100,
                      //     ),
                      //     Container(
                      //       margin: const EdgeInsets.all(0),
                      //       padding: const EdgeInsets.all(0),
                      //       width: 200,
                      //       height: 100,
                      //     ),
                      //   ],
                      // ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(0),
                              padding: const EdgeInsets.all(0),
                              width: 140,
                              height: 160,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(0),
                                    padding: const EdgeInsets.all(0),
                                    width: 200,
                                    height: 130,
                                    color: AppColors.imgIconBgColor,
                                    child: const Icon(
                                      Icons.image,
                                      size: 100,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(0),
                                    padding: const EdgeInsets.all(0),
                                    width: 200,
                                    height: 20,
                                    color: AppColors.buttonColor,
                                    child: Align(
                                      alignment: const Alignment(-0.0, 0.0),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: AppColors.buttonColor,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          // side: const BorderSide(
                                          //     color: Color(0xff808080), width: 1),
                                        ),
                                        // padding: const EdgeInsets.all(16),
                                        textColor: AppColors.buttonTextColor,
                                        // height: 40,
                                        minWidth: 200,
                                        child: const Text(
                                          "Download",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(0),
                              padding: const EdgeInsets.all(0),
                              width: 140,
                              height: 160,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(0),
                                    padding: const EdgeInsets.all(0),
                                    width: 200,
                                    height: 130,
                                    color: AppColors.imgIconBgColor,
                                    child: const Icon(
                                      Icons.image,
                                      size: 100,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(0),
                                    padding: const EdgeInsets.all(0),
                                    width: 200,
                                    height: 20,
                                    color: AppColors.buttonColor,
                                    child: Align(
                                      alignment: const Alignment(-0.0, 0.0),
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: AppColors.buttonColor,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          // side: const BorderSide(
                                          //     color: Color(0xff808080), width: 1),
                                        ),
                                        // padding: const EdgeInsets.all(16),
                                        textColor: AppColors.buttonTextColor,
                                        // height: 40,
                                        minWidth: 200,
                                        child: const Text(
                                          "Download",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
