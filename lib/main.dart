import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:meatfolks_client/views/screens/loading_screen.dart';
import 'package:meatfolks_client/views/screens/main_screen.dart';
import 'package:meatfolks_client/views/screens/otp_screen.dart';
import 'package:meatfolks_client/views/screens/register_screen.dart';
import 'package:meatfolks_client/views/screens/splash_screen.dart';
import './views/screens/login_screen.dart';
import 'package:meatfolks_client/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInitialise();
  runApp(MyApp());
}

Future<void> firebaseInitialise() async {
  FirebaseApp app = await Firebase.initializeApp();
  assert(app != null);
  print('Initialized default app $app');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: LoginScreen(),
    );
  }
}
