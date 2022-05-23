import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:telechat_proto/app/pages_routes.dart';
import 'package:telechat_proto/app/theme_scheme.dart';
import 'package:telechat_proto/app/localization.dart';
import 'dart:ui' as ui;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(), // ваши переводы
      locale: ui.window.locale,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,

      // подключить готовые библиотечные темы
      // theme: FlexThemeData.light(scheme: FlexScheme.deepBlue),
      // darkTheme: FlexThemeData.dark(scheme: FlexScheme.deepBlue),

      // подключить пользовательскую тему
      theme: MyFlexThemeDataLight,
      darkTheme: MyFlexThemeDataDark,

      unknownRoute: myUnknownRoute,
      initialRoute: myInitialRoute,
      getPages: myGetPages,

      builder: (context, child) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          maxWidth: 2460,
          minWidth: 400,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.autoScale(400, name: MOBILE),
            // const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            // const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
    );
  }
}