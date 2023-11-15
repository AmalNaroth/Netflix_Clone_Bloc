import 'package:flutter/material.dart';
import 'package:netflix_clone/application/downloads/download_bloc.dart';
import 'package:netflix_clone/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/domain/core/di/injectable.dart';
import 'package:netflix_clone/presentation/main_page/screen_main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DownloadBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SearchBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FastLaughBloc>(),
        )
      ],
      child: MaterialApp(
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
            iconTheme: const IconThemeData(color: whiteColor),
            appBarTheme:
                const AppBarTheme(backgroundColor: Colors.transparent)),
        routes: {ScreenMainPage.screenMainPage: (context) => ScreenMainPage()},
      ),
    );
  }
}
