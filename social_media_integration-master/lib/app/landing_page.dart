import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media_integration/app/Sign_in_page.dart';
import 'package:social_media_integration/app/home_page.dart';
//import 'package:social_media_integration/app/home_page.dart';
import 'package:social_media_integration/services/auth.dart';

class LangingPage extends StatelessWidget {
  const LangingPage({Key key, @required this.auth}) : super(key: key);

  final AuthBase auth;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User user = snapshot.data;
          if (user == null) {
            return SignInPage(
              auth: auth,
            );
          }
          return HomePage(
            auth: auth,
          );

          //
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
