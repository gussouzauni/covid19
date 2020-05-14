import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class Api extends Disposable {
  Future fetchPost(Dio client) async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    print(response.data);
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
