import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/responsive/mobile_screen_layout.dart';
import 'package:insta_clone/responsive/web_screen_layout.dart';
import 'utils/colors.dart';
import 'responsive/responsive_layout_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyAK7Ay1RbfXOZTEadY534OY88ibZ_pEzBc',
          appId: "1:187669847644:web:b932551c7ccb0ddb5c1099",
          messagingSenderId: "187669847644",
          projectId: "instagramclone-69c07",
          storageBucket: "instagramclone-69c07.appspot.com"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(Landing());
}

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram clone",
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
