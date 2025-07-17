import 'package:get/get_navigation/src/root/internacionalization.dart';

import 'en_us.json.dart';
import 'hi_in.json.dart';

    // Hindi class वाला फाइल

class LocalizationService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': English.values,
    'hi_IN': Hindi.values,
  };
}
