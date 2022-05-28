import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:telechat_proto/pages/main_page.dart';
import 'package:telechat_proto/pages/login_page.dart';
import 'package:telechat_proto/widgets/chat/view/chat_view.dart';

String myInitialRoute = '/';

List<GetPage> myGetPages = [
  GetPage(name: '/', page: () => MyLogin()),
  GetPage(name: '/mainPage', page: () => MainPage()),
  GetPage(name: '/chat_view', page: () => ChatView()),
];

GetPage myUnknownRoute = GetPage(name: '/notfound', page: () => MainPage());
