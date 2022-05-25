import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'language': 'English',
          'welcome': 'Welcome',
          'username': 'Username',
          'password': 'Password',
          'enter': 'ENTER',
          'profile': 'profile',
          'lightDarkModes': 'Light/Dark modes',
          'languages': 'Languages',
          'instruction': 'Instruction',
          'contactWithDevelopers': 'Contact with developers',
          'settings': 'Settings',
          'myTopics': 'Topics',
          'radar': 'Radar',
          'chats': 'Chats',
          'labelUndoText': 'Undo',
          'IAmAvailable': 'I am available',
          'IAmUnavailable': 'I\'m unavailable'
        },
        'ru_RU': {
          'language': 'Русский',
          'welcome': 'Добро пожаловать!',
          'username': 'Никнейм',
          'password': 'Пароль',
          'enter': 'ВХОД',
          'profile': 'Профиль',
          'lightDarkModes': 'Ночной/Дневной режимы',
          'languages': 'Языки',
          'instruction': 'Инструкция',
          'contactWithDevelopers': 'Связь с разработчиками',
          'settings': 'Настройки',
          'myTopics': 'Мои темы',
          'radar': 'Радар',
          'chats': 'Мои чаты',
          'labelUndoText': 'Закрыть',
          'IAmAvailable': 'Я доступен(на)',
          'IAmUnavailable': 'Я недоступен(на)'
        }
      };
}
