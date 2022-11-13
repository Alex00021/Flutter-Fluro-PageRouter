import 'package:fluro/fluro.dart';
import 'package:fluro_dmeo/main_page.dart';
import 'package:fluro_dmeo/seach_page.dart';
import 'app_page_path.dart';

///
/// @date: 2022/4/8 15:19
/// @author: Alex
/// @remark:
///

final Map<String, Handler> pageHandler = {
  AppPagePath.splash:
      Handler(handlerFunc: (context, params) => const MainPage()),
  AppPagePath.guide:
      Handler(handlerFunc: (context, params) => const SearchPage()),
  // AppPagePath.home:
  //     Handler(handlerFunc: (context, params) => const HomeScreen()),
  // AppPagePath.detail: Handler(handlerFunc: (context, params) {
  //   Bundle? bundle = context?.arguments as Bundle;
  //   context?.settings?.arguments;
  //   RecipeModel recipeModel = bundle.get('detail');
  //   log('${DateTime.now()} >>(:32)>>${recipeModel.title}');
  //   return DetailScreen(
  //     recipeModel: recipeModel,
  //   );
  // }),
  // AppPagePath.login:
  //     Handler(handlerFunc: (context, params) => const LoginScreen()),
  // AppPagePath.article:
  //     Handler(handlerFunc: (context, params) => const ArticleScreen()),
  // AppPagePath.settingMessage:
  //     Handler(handlerFunc: (context, params) => const SettingMessage()),
  // AppPagePath.settingStick:
  //     Handler(handlerFunc: (context, params) => const StickyPage()),
  // AppPagePath.share:
  //     Handler(handlerFunc: (context, params) => const ShareScreen()),
  // AppPagePath.settingMessageExternal:
  //     Handler(handlerFunc: (context, params) => const SettingExternalMessage()),
};
