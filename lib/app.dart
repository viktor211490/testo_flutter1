import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:testo/models/themes.dart';
import 'package:testo/routes.dart';
import 'package:testo/screens/home/home_screen.dart';
import 'package:testo/screens/profile/profile_screen.dart';
import 'package:testo/store/app.state.dart';

import 'generated/l10n.dart';

class ReduxApp extends StatelessWidget {
  final Store<AppState> store;

  const ReduxApp({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: AdaptiveTheme(
        light: kLightTheme,
        dark: kDarkTheme,
        initial: AdaptiveThemeMode.light,
        builder: ((light, dark) => MaterialApp(
              title: 'flutterApp',
              theme: light,
              darkTheme: dark,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              routes: {
                ArchSampleRoutes.home: (context) {
                  return const HomeScreen();
                },
              },
            )),
      ),
    );
  }
}
