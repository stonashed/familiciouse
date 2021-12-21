import 'package:familicouse_app/auth/create_account.dart';
import 'package:familicouse_app/auth/login_view.dart';
import 'package:familicouse_app/favourite_view.dart';
import 'package:familicouse_app/home_view.dart';
import 'package:familicouse_app/index_view.dart';
import 'package:flutter/material.dart';
import 'contact_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          iconTheme: IconThemeData(color: Colors.black),
          scaffoldBackgroundColor: const Color.fromRGBO(240, 251, 252, 1),
          cardColor: Colors.white,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.black),
            bodyText2: TextStyle(color: Colors.black),
          ),
          inputDecorationTheme: const InputDecorationTheme(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              )),
          buttonTheme: const ButtonThemeData(
              colorScheme: ColorScheme.dark(primary: Colors.white),
              textTheme: ButtonTextTheme.primary)),
      darkTheme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,
              iconTheme: IconThemeData(color: Colors.white),
              elevation: 0,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          iconTheme: IconThemeData(color: Colors.white),
          scaffoldBackgroundColor: Colors.black,
          cardColor: Colors.grey,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          ),
          inputDecorationTheme: const InputDecorationTheme(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white70),
              ),
              labelStyle: TextStyle(color: Colors.white70)),
          buttonTheme: const ButtonThemeData(
              colorScheme: ColorScheme.dark(primary: Colors.black),
              textTheme: ButtonTextTheme.primary)),
      themeMode: ThemeMode.system,
      home: const CreateAccount(),
    );
  }
}
