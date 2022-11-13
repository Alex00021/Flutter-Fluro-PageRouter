// import 'package:fluroDemo/router/config/app_page_config.dart';
// import 'package:lib_router/app_router.dart';

import 'app_page_config.dart';
import 'app_router.dart';

class ApplicationRouter {
  static setupRouter() {
    pageHandler.forEach((path, handler) {
      AppRouter.define(path, handler: handler);
    });
  }
}
