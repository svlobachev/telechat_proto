import 'package:get/get_navigation/src/routes/get_route.dart';

import '../pages/login_page.dart';
import '../pages/main_page.dart';
import '../widgets/chat/view/chat_view.dart';

String myInitialRoute = '/';

List<GetPage> myGetPages = [
  GetPage(name: '/', page: () => const MyLogin()),
  GetPage(name: '/mainPage', page: () => const MainPage()),
  GetPage(name: '/chat_view', page: () => ChatView()),
];

GetPage myUnknownRoute = GetPage(name: '/notfound', page: () => const MainPage());
