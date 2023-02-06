// ignore_for_file: always_use_package_imports

import 'package:get/get.dart';
import 'utils/langs/ar.dart';
import 'utils/langs/en.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
