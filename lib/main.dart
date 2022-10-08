import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/screens/login_screen.dart';

//import 'package:instagram_flutter/screens/signup_screen.dart';

import 'utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAZRLfSYeH63V7U4BummMrkARr82q77RuY',
        appId: '1:319347938695:web:dcf13a6166a55b46b2ef22',
        messagingSenderId: '319347938695',
        projectId: 'instagram-clone-d7dd9',
        storageBucket: 'instagram-clone-d7dd9.appspot.com',
      ),
    );
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
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: LoginScreen(),
    );
  }
}
