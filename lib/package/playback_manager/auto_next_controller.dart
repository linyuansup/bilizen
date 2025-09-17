import 'dart:io';

import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/ui/windows/page/router.dart';

mixin AutoNextController {
  bool get autoNext {
    if (Platform.isWindows) {
      return getIt<WindowsRouter>().home.currentPage.value.state.name !=
          "video";
    }
    return true;
  }
}
