import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/main_page/screen_main_page.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Netflix Clone",
      initialRoute: ScreenMainPage.screenMainPage,
      theme: ThemeData.dark().copyWith(
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
            bodySmall: TextStyle(color: Colors.white),
          ),
          scaffoldBackgroundColor: backgoundColor,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData()
              .copyWith(backgroundColor: backgoundColor),
          iconTheme: const IconThemeData(color: whiteColor)),
      routes: {ScreenMainPage.screenMainPage: (context) => ScreenMainPage()},
    );
  }
}
