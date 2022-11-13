import 'package:fluro_dmeo/main_page.dart';
import 'package:flutter/material.dart';

import 'router/app_router.dart';
import 'router/application_router.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ApplicationRouter.setupRouter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: AppRouter.generator,
    );
  }
}


