import 'package:flutter/material.dart';

///
/// @date: 2022/4/8 12:08
/// @author: Alex
/// @remark:
///
abstract class RedirectInterceptor {
  Future<bool> needRedirect();

  Future navigateTo(BuildContext context);
}
