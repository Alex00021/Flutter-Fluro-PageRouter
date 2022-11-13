import 'package:fluro/fluro.dart';
import 'package:fluro_dmeo/router/app_router.dart';
import 'package:fluro_dmeo/seach_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'router/app_page_path.dart';
// import 'package:flutter_siri_demo/seach_page.dart';
//
// import 'app_routes.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  static final router = FluroRouter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            FlatButton(
              minWidth: 200,
                height: 80,
                color: Colors.blueGrey,
                onPressed: (){
                  // AppRouter.navigateTo(context, transition: TransitionType.inFromLeft, AppPagePath.guide);
                  AppRouter.navigateTo(
                    context,
                    AppPagePath.guide,
                    transition: TransitionType.inFromBottom,
                    transitionBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
                      return FadeTransition(
                          opacity: CurvedAnimation(
                            parent: animation,
                            curve: Curves.linear,
                          ),
                          child: child
                      );
                    },
                    transitionDuration: const Duration(seconds: 2),
                  );
                },
                child: const Text("上拉切换界面",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
            // 向左切换界面
            const SizedBox(
              height: 80,
            ),
            FlatButton(
                minWidth: 200,
                height: 80,
                color: Colors.blueGrey,
                onPressed: (){
                  AppRouter.navigateTo(context, transition: TransitionType.inFromLeft, AppPagePath.guide);
                },
                child: const Text("向左切换界面",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
            // 向右切换界面
            const SizedBox(
              height: 80,
            ),
            FlatButton(
                minWidth: 200,
                height: 80,
                color: Colors.blueGrey,
                onPressed: (){
                  AppRouter.navigateTo(context, transition: TransitionType.inFromRight, AppPagePath.guide);
                },
                child: const Text("向右切换界面",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
            //向下拉切换界面
            const SizedBox(
              height: 80,
            ),
            FlatButton(
                minWidth: 200,
                height: 80,
                color: Colors.blueGrey,
                onPressed: (){
                  AppRouter.navigateTo(context, transition: TransitionType.inFromTop, AppPagePath.guide);
                },
                child: const Text("向下拉切换界面",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}
