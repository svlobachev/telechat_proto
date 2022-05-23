import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "language": "English",
          "welcome": "Welcome",
          "username": "Username",
          "password": "Password",
          "enter": "ENTER"
        },
        'ru_RU': {
          "language": "Русский",
          "welcome": "Добро пожаловать!",
          "username": "Никнейм",
          "password": "Пароль",
          "enter": "ВХОД"
        }
      };
}
