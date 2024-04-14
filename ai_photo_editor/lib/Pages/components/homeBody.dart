// import 'dart:async';

// import 'package:ai_photo_editor/Pages/ImageGenerator.dart';
// import 'package:ai_photo_editor/Pages/components/pictureToolContainer.dart';
// import 'package:ai_photo_editor/Pages/profile.dart';
// import 'package:ai_photo_editor/Pages/tools/removeBackground.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class HomeBody extends StatefulWidget {
//   // const HomeBody({ Key? key }) : super(key: key);
//   final Function(String) changePage;

//   const HomeBody({super.key, required this.changePage});
//   @override
//   _HomeBodyState createState() => _HomeBodyState();
// }

// class _HomeBodyState extends State<HomeBody> {
//   int currentPageIndex = 0;
//   PageController pageController = PageController(initialPage: 0);
//   int currentPage = 0;
//   // late PageController pageController;
//   Timer? timer;

//   List<String> imagePaths = [
//     "images/aiGirl.jpg",
//     "images/aiGirl.jpg",
//     "images/aiGirl.jpg",
//   ];
//   String _currentPage = 'Home';

//   void changePage(String page) {
//     setState(() {
//       _currentPage = page;
//     });
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     // Recreate the PageController when dependencies change (e.g., navigation)
//     pageController.dispose(); // Dispose of the old PageController
//     pageController =
//         PageController(initialPage: currentPage); // Recreate with initialPage
//     if (currentPageIndex == 0) {
//       startTimer();
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     // pageController = PageController(initialPage: 0);
//     if (currentPageIndex == 0) {
//       startTimer();
//     }
//   }

//   @override
//   void dispose() {
//     timer?.cancel();
//     pageController.dispose();
//     super.dispose();
//   }

//   void startTimer() {
//     timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
//       if (currentPage < imagePaths.length - 1) {
//         currentPage++;
//       } else {
//         currentPage = 0;
//       }
//       if (currentPageIndex == 0) {
//         pageController.animateToPage(
//           currentPage,
//           duration: const Duration(milliseconds: 300),
//           curve: Curves.easeInOut,
//         );
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return <Widget>[
//       Container(
//         margin: const EdgeInsets.all(0),
//         padding: const EdgeInsets.all(0),
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//           color: const Color(0x3ae1e1f4),
//           shape: BoxShape.rectangle,
//           borderRadius: BorderRadius.zero,
//           border: Border.all(color: const Color(0x4d9e9e9e), width: 0),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Container(
//                 margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
//                 padding: const EdgeInsets.all(0),
//                 width: MediaQuery.of(context).size.width * 0.9,
//                 height: 180,
//                 decoration: const BoxDecoration(
//                   color: Color(0x1f000000),
//                   shape: BoxShape.rectangle,
//                   borderRadius: BorderRadius.zero,
//                 ),
//                 child: SizedBox(
//                   height: 100,
//                   width: 350,
//                   child: Stack(
//                     children: [
//                       PageView.builder(
//                         controller: pageController,
//                         scrollDirection: Axis.horizontal,
//                         itemCount: imagePaths.length,
//                         onPageChanged: (index) {
//                           setState(() {
//                             currentPage = index;
//                           });
//                         },
//                         itemBuilder: (context, index) {
//                           return ClipRRect(
//                             borderRadius: BorderRadius.circular(10.0),
//                             child: Image.asset(
//                               imagePaths[index],
//                               height: 300,
//                               width: 200,
//                               fit: BoxFit.cover,
//                             ),
//                           );
//                         },
//                       ),
//                       Align(
//                         alignment: Alignment.bottomCenter,
//                         child: Padding(
//                           padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
//                           child: SmoothPageIndicator(
//                             controller: pageController,
//                             count: 3,
//                             axisDirection: Axis.horizontal,
//                             effect: const SlideEffect(
//                               dotColor: Color(0xff9e9e9e),
//                               activeDotColor: Color(0xff3a57e8),
//                               dotHeight: 10,
//                               dotWidth: 10,
//                               radius: 20,
//                               spacing: 8,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "Picture Tools",
//                     textAlign: TextAlign.start,
//                     overflow: TextOverflow.clip,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontStyle: FontStyle.normal,
//                       fontSize: 20,
//                       color: Color(0xff000000),
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(0),
//                 padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
//                 width: MediaQuery.of(context).size.width,
//                 height: 130,
//                 decoration: const BoxDecoration(
//                   color: Color(0x00000000),
//                   shape: BoxShape.rectangle,
//                   borderRadius: BorderRadius.zero,
//                 ),
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const RemoveBackground()),
//                           );
//                         },
//                         child: GestureDetector(
//                           onTap: () {
//                             changePage('Page 1');
//                           },
//                           child: const PictureToolContainer(
//                               imgPath: "images/rmbg.png",
//                               text1: "Remove",
//                               text2: "Background",
//                               toolpath: "/Home/RemoveBackground",
//                                   details: ""),
//                         ),
//                       ),
//                       const PictureToolContainer(
//                           imgPath: "images/aiRestore.gif",
//                           text1: "AI",
//                           text2: "Outpaint"),
//                       const PictureToolContainer(
//                           imgPath: "images/aiRecolor.gif",
//                           text1: "Recolor",
//                           text2: "")
//                     ],
//                   ),
//                 ),
//               ),
//               const Padding(
//                 padding: EdgeInsets.fromLTRB(20, 20, 0, 15),
//                 child: Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "Magic Tools",
//                     textAlign: TextAlign.start,
//                     overflow: TextOverflow.clip,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontStyle: FontStyle.normal,
//                       fontSize: 20,
//                       color: Color(0xff000000),
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(0),
//                 padding: const EdgeInsets.all(0),
//                 decoration: const BoxDecoration(
//                   color: Color(0x00000000),
//                   shape: BoxShape.rectangle,
//                   borderRadius: BorderRadius.zero,
//                 ),
//                 child: const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           PictureToolContainer(
//                               imgPath: "images/aiRemove.gif",
//                               text1: "Remove",
//                               text2: "Objects"),
//                           PictureToolContainer(
//                               imgPath: "images/aOoutpaint.gif",
//                               text1: "Outpaint",
//                               text2: "Image")
//                         ],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             PictureToolContainer(
//                                 imgPath: "images/aiReplace.gif",
//                                 text1: "Replace",
//                                 text2: "Objects"),
//                             PictureToolContainer(
//                                 imgPath: "images/aiZoom.gif",
//                                 text1: "Generative",
//                                 text2: "Zoom")
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.fromLTRB(0, 25, 0, 15),
//                 padding: const EdgeInsets.all(0),
//                 width: MediaQuery.of(context).size.width * 0.85,
//                 height: 140,
//                 decoration: BoxDecoration(
//                   color: const Color(0x1f000000),
//                   shape: BoxShape.rectangle,
//                   borderRadius: BorderRadius.zero,
//                   border: Border.all(color: const Color(0x4d9e9e9e), width: 0),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       //End of homepage

//       const ImageGenerator(),
//       //End of imageGeneration page
//       /// Profile page
//       const Profile(),
//     ][currentPageIndex];
//   }
// }
