import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'local_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: [
        Locale("en"),
        Locale("te"),
        Locale("ar"),
      ],
      path: "assets/translations",
      fallbackLocale: Locale("en"),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        locale: context.locale,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LocalScreen());
  }
}
