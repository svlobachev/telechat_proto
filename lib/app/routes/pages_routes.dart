import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:telechat_proto/pages/main_page.dart';
import 'package:telechat_proto/pages/login_page.dart';

String MyInitialRoute = '/';

List<GetPage> myGetPages = [
  GetPage(name: '/', page: () => MyLogin()),
  GetPage(name: '/mainPage', page: () => MainPage()),
];

GetPage MyUnknownRoute = GetPage(name: '/notfound', page: () => MainPage());
