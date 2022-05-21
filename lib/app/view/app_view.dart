import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telechat_proto/app/configs/setup_window.dart';
import 'package:telechat_proto/app/routes/pages_routes.dart';
import 'package:telechat_proto/app/theme/theme_scheme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:telechat_proto/bottom_navigation_bar/model/slected_index.dart';
import 'package:telechat_proto/l10n/l10n.dart';

void main() {
  setupWindow();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building MyApp');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SelectedIndexData(),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          title: 'Provider Demo',

          // подключить готовые библиотечные темы
          // theme: FlexThemeData.light(scheme: FlexScheme.deepBlue),
          // darkTheme: FlexThemeData.dark(scheme: FlexScheme.deepBlue),

          // подключить пользовательскую тему
          theme: MyFlexThemeDataLight,
          darkTheme: MyFlexThemeDataDart,

          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,

          initialRoute: RouteManager.loginPage,
          onGenerateRoute: RouteManager.generateRoute,

          // initialRoute: '/',
          // routes: myRoutes,
        );
      },
    );
  }
}

//
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // Using MultiProvider is convenient when providing multiple objects.
//     return MultiProvider(
//       providers: [],
//       builder: (context, child) {
//         MaterialApp(
//           debugShowCheckedModeBanner: false,
//           themeMode: ThemeMode.system,
//           title: 'Provider Demo',
//
//           // подключить готовые библиотечные темы
//           // theme: FlexThemeData.light(scheme: FlexScheme.deepBlue),
//           // darkTheme: FlexThemeData.dark(scheme: FlexScheme.deepBlue),
//
//           // подключить пользовательскую тему
//           theme: MyFlexThemeDataLight,
//           darkTheme: MyFlexThemeDataDart,
//
//           localizationsDelegates: const [
//             AppLocalizations.delegate,
//             GlobalMaterialLocalizations.delegate,
//             GlobalCupertinoLocalizations.delegate,
//           ],
//           supportedLocales: AppLocalizations.supportedLocales,
//
//           initialRoute: RouteManager.loginPage,
//           onGenerateRoute: RouteManager.generateRoute,
//
//           // initialRoute: '/',
//           // routes: myRoutes,
//         );
//       },
//     );
//   }
// }
