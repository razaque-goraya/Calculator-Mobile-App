// import 'package:fa002/widgets/home.dart';
import 'package:fa002/widgets/rows_cols.dart';
// import 'package:fa002/widgets/textelevatedbutons.dart';
// import 'package:fa002/widgets/dismissible.dart';
// import 'package:fa002/widgets/alertdialogbox.dart';
// import 'package:fa002/widgets/animatedwidgetday11.dart';
// import 'package:fa002/widgets/bottomnav.dart';
// import 'package:fa002/widgets/dropdown.dart';
// import 'package:fa002/widgets/forms.dart';
// import 'package:fa002/widgets/day19.dart';
// import 'package:fa002/widgets/day20.dart';
// // import 'package:fa002/widgets/day24authentication.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
// import 'package:fa002/widgets/geolocatorwidget.dart';
// import 'package:fa002/widgets/imagepickerwidget.dart';
import 'package:fa002/widgets/stacks.dart';
// import 'package:fa002/widgets/tabbar.dart';
// import 'package:fa002/widgets/bottomsheet.dart';
// import 'package:fa002/widgets/drawer.dart';
// import 'package:fa002/widgets/imagewidget.dart';
// import 'package:fa002/widgets/listgridviews.dart';
// import 'package:fa002/widgets/snackbarwidget.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:fa002/alet.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,

      //caling widgets
      // home: Home(),     //Day - 1
      // home: RowsCols(), //Day - 2
      // home: const TextElevatedButons(), //Day - 3
      // home: ListGridViews(), //Day - 4
      // home: SnackBarWidget(), //Day - 5
      // home: const DrawerWidget(), //Day - 6
      // home: const ImageWidget(),  //Day-8
      // home: const AlertDialogBox(), //Day-09
      // home: const BottomSheetWidget(), //Day-10
      // home: AnimatedWidgetDay11(), //Day-11
      // home: const BottomNavWidget(), //Day 12
      // home: const DropDownWidget(), //Day 13
      // home: const FormsWidget(), //Day 14
      home: const StacksWidget(), //Day 15
      // home: const TabBarWidget(), //Day 16
      // home: const ImagePickerWidget(), //Day 17
      // home: const GeoLocationWidget(), //Day 18
      // home: const Day19(), //DAy 19
      // home: Day20(), //Day 20
      // home: AlertDialogBox(), //Day 24
      // home: Alet(),
    );
  }
}
