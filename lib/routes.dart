import 'package:flutter/widgets.dart';
import 'package:meatfolks_client/views/screens/history_screen.dart';
import 'package:meatfolks_client/views/screens/loading_screen.dart';
import 'package:meatfolks_client/views/screens/login_screen.dart';
import 'package:meatfolks_client/views/screens/main_screen.dart';
import 'package:meatfolks_client/views/screens/register_screen.dart';

import 'views/screens/home_screen.dart';
import 'views/screens/otp_screen.dart';
import 'views/screens/profile_screen.dart';
import 'views/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  LoadingScreen.routeName: (context) => LoadingScreen(),
  HistoryScreen.routeName: (context) => HistoryScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
};
