// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:cross_file/cross_file.dart';
// import 'package:image_picker/image_picker.dart';

// class ImagePickerWidget extends StatefulWidget {
//   const ImagePickerWidget({super.key});

//   @override
//   State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
// }

// class _ImagePickerWidgetState extends State<ImagePickerWidget> {
//   final ImagePicker _picker = ImagePicker();
//   XFile? file;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Day 17: Image Picker"),
//       ),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             color: Colors.grey,
//             height: 300,
//             width: double.infinity,
//             child: Center(
//                 child: file == null
//                     ? const Text("Image not picked")
//                     : Image.file(
//                         File(file!.path),
//                         fit: BoxFit.cover,
//                       )),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           ElevatedButton(
//               onPressed: () async {
//                 final XFile? photo =
//                     await _picker.pickImage(source: ImageSource.gallery);
//                 setState(() {
//                   file = photo;
//                 });
//                 print("Image Picked");
//                 //to get the path of the image
//                 print(photo!.path);
//               },
//               child: const Text("Pick Image"))
//         ],
//       )),
//     );
//   }
// }
