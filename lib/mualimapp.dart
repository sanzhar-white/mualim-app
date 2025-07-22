import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mualim/core/routes/router.dart';
import 'package:mualim/core/theme/theme.dart';
import 'package:mualim/generated/l10n.dart';

class MualimApp extends StatelessWidget {
  const MualimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en')],
      routerConfig: router,
      theme: themeData,
    );
  }
}
