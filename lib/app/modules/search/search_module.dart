import 'package:api_rest1/app/modules/search/search_controller.dart';
import 'package:api_rest1/app/modules/search/search_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SearchController()),
      ];

  @override
  List<Router> get routers => [
        Router('/search', child: (_, args) => SearchPage()),
      ];

  static Inject get to => Inject<SearchModule>.of();
}
