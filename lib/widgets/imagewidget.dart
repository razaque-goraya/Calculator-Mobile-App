// import 'dart:ui';
// import 'package:cached_network_image/cached_network_image.dart';

// import 'package:flutter/material.dart';

// class ImageWidget extends StatelessWidget {
//   const ImageWidget({super.key});
//   // Day: 08  Working With Images

//   @override
//   Widget build(BuildContext context) {
//     //Practice with images from Internet
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     backgroundColor: Colors.green,
//     //     title: const Text(
//     //       "Day_08: Working with Images",
//     //       style: TextStyle(color: Colors.white),
//     //     ),
//     //   ),
//     //   body: Center(
//     //     child: Container(
//     //       decoration: BoxDecoration(
//     //         boxShadow: [
//     //           BoxShadow(
//     //               blurRadius: 20, color: Colors.green.shade800, spreadRadius: 3)
//     //         ],
//     //         // boxShadow: [BoxShadow(blurRadius: 10)],
//     //         image: const DecorationImage(
//     //             image: NetworkImage(
//     //                 'https://c4.wallpaperflare.com/wallpaper/156/33/226/anime-doraemon-wallpaper-preview.jpg'),
//     //             fit: BoxFit.fill),
//     //         borderRadius: BorderRadius.circular(30),
//     //         color: Colors.lightBlue,
//     //       ),
//     //       height: 300,
//     //       width: 200,

//     //       //just image but we want to decorate the images we have to put in container
//     //       // child: Image.network(
//     //       //   'https://i.pinimg.com/736x/e3/f3/4d/e3f34de992ae4267f272550a5935447f.jpg',
//     //       //   fit: BoxFit.fill, //BoxFit properties are amazing to practice with
//     //       // ),
//     //     ),
//     //   ),
//     // );

//     //Practice with Images from assets folder
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: const Text(
//           "Day_08: Working with Images",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Center(
//         child: Container(
//           height: 200,
//           width: 300,
//           child: CachedNetworkImage(
//             imageUrl:
//                 'https://rukminim2.flixcart.com/image/850/1000/k612pow0/poster/p/v/m/medium-cute-doremon-cartoon-poster-kids-poster-poster-for-kids-original-imafzh3z5gqgynkz.jpeg?q=90&crop=true',
//             placeholder: (context, url) => const Center(
//               child: CircularProgressIndicator(),
//             ),
//             errorWidget: (context, url, error) => const Icon(Icons.error),
//           ),

//           //Assets Images
//           // decoration: BoxDecoration(
//           //   boxShadow: [
//           //     BoxShadow(
//           //         blurRadius: 20, color: Colors.green.shade800, spreadRadius: 3)
//           //   ],
//           //   // boxShadow: [BoxShadow(blurRadius: 10)],
//           //   image: const DecorationImage(
//           //       image: AssetImage('assets/download.jpg'), fit: BoxFit.fill),
//           //   borderRadius: BorderRadius.circular(30),
//           //   color: Colors.lightBlue,
//           // ),

//           //just image but we want to decorate the images we have to put in container
//           // child: Image.network(
//           //   'https://i.pinimg.com/736x/e3/f3/4d/e3f34de992ae4267f272550a5935447f.jpg',
//           //   fit: BoxFit.fill, //BoxFit properties are amazing to practice with
//           // ),
//         ),
//       ),
//     );
//   }
// }
