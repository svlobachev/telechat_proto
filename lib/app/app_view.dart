import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'localization.dart';
import 'routes.dart';
import 'theme_scheme.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // подключить готовые библиотечные темы
  // ThemeData theme = FlexThemeData.light(scheme: FlexScheme.greyLaw);
  // ThemeData darkTheme = FlexThemeData.dark(scheme: FlexScheme.greyLaw);

  // подключить пользовательскую тему
  ThemeData theme = MyFlexThemeDataLight;
  ThemeData darkTheme = MyFlexThemeDataDark;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      // ваши переводы
      locale: ui.window.locale,
      debugShowCheckedModeBanner: false,

      theme: theme,
      darkTheme: darkTheme,

      unknownRoute: myUnknownRoute,
      initialRoute: myInitialRoute,
      getPages: myGetPages,

      builder: (BuildContext context, Widget? child) =>
          ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, child!),
              maxWidth: 2460,
              minWidth: 450,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.autoScale(450, name: MOBILE),
                // const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                // const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
              ],
              background: Container(color: const Color(0xFFF5F5F5))),
    );
  }
}
