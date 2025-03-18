import 'package:get/get_navigation/get_navigation.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'What is your name?',
          'name': 'Flutter',
        },
        'mr_IN': {
          'message': 'तुमचे नाव काय आहे?',
          'name': 'फ्लटर',
        },
      };
}
