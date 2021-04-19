import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_media_integration/app/landing_page.dart';
import 'package:social_media_integration/services/auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final signInPage = SignInPage();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sign In App ",
      theme: ThemeData(
          //brightness: Brightness.dark, primaryColor: Colors.blueGrey
          primarySwatch: Colors.indigo),
      home: LangingPage(
        auth: Auth(),
      ),
    );
  }
}
