import 'package:cosmos_routine/screens/dashboard/dashboard.dart';
import 'package:cosmos_routine/screens/dashboard/home.dart';
import 'package:cosmos_routine/screens/splash/splash.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
     SplashScreen.routeName: (context) => SplashScreen(),
     HomePage.routeName: (context) => HomePage(),
     RoutineManagement.routeName: (context) => RoutineManagement(),
  // SignInScreen.routeName: (context) => SignInScreen(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  // SignUpScreen.routeName: (context) => SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // WeeklyRoutine.routeName: (context) => WeeklyRoutine(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};