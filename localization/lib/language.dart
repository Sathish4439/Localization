import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations {
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'Hello World', 'change_language': 'Change Language'},
        'hi_IN': {'hello': 'हैलो वर्ल्ड', 'change_language': 'भाषा बदलें'},
        'fr_CA': {
          'hello': 'Bonjour le monde',
          'change_language': 'Changer de langue'
        },
        'tm_IN': {'hello': 'வணக்கம்', 'change_language': 'மொழியை மாற்றவும்'},
      };
}
