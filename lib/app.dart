import 'package:color_button_app/src/common/localization/generated/app_localizations.dart';
import 'package:color_button_app/src/feature/color/widget/color_screen.dart';
import 'package:flutter/material.dart';

class ColorApp extends StatefulWidget {
  const ColorApp({super.key});

  @override
  State<ColorApp> createState() => _ColorAppState();
}

class _ColorAppState extends State<ColorApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Navigator(
        key: _navigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (context) => const ColorScreen());
        },
      ),
    );
  }
}
