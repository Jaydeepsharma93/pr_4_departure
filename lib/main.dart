import 'package:flutter/material.dart';
import 'package:pr_4_departure/screens/controller/provider.dart';
import 'package:pr_4_departure/screens/dohascreen/provider/languageProvider.dart';
import 'package:pr_4_departure/screens/splashscreen/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ProviderParsing(),
      ),
      ChangeNotifierProvider(
        create: (context) => LanguageProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: (Provider.of<LanguageProvider>(context).isLight)?ThemeMode.light:ThemeMode.dark,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
