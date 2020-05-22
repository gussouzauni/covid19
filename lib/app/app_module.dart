import 'package:api_rest1/app/app_controller.dart';
import 'package:api_rest1/app/modules/home/home_controller.dart';
import 'package:api_rest1/app/modules/search/search_controller.dart';
import 'package:api_rest1/app/modules/search/search_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:api_rest1/app/app_widget.dart';
import 'package:api_rest1/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => AppController()),
        Bind((i) => SearchController())
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router(Modular.initialRoute, module: SearchModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
