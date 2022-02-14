import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/responsive/mobile_screen_layout.dart';
import 'package:flutter_application_1/responsive/responsive_layout_screen.dart';
import 'package:flutter_application_1/responsive/web_screen_layout.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/utilis/colors.dart';
import 'package:flutter_application_1/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyDpDdGpC7XwOARFUtW1EZ3-j8gkv6tZo3o',
            appId: '1:11311732397:web:6ea3ded0f607e1e09c5824',
            messagingSenderId: '11311732397',
            projectId: 'photo-moments-5c74f',
            storageBucket: 'photo-moments-5c74f.appspot.com'));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Photo Moments',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: LoginScreen()
        // ResponsiveLayout(
        //     mobileScreenLayout: MobileScreenLayout(),
        //     webScreenLayout: WebScreenLayout()),
        );
  }
}
