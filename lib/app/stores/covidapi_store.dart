import 'dart:convert';

import 'package:api_rest1/app/consts/base_url.dart';
import 'package:api_rest1/app/models/covidapi.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
part 'covidapi_store.g.dart';

class CovidApiStore = _CovidApiStoreBase with _$CovidApiStore;

abstract class _CovidApiStoreBase with Store {
  @observable
  CovidApi covidApi;

  @action
  fetchCovidList() {
    covidApi = null;
    loadCovidApi().then((covidList) {
      covidApi = covidList;
    });
  }

  Future<CovidApi> loadCovidApi() async {
    try {
      final response = await http.get(ConstApi.base_url);
      var decodeJson = jsonDecode(response.body);
      return CovidApi.fromJson(decodeJson);
    } catch (err) {
      print('Erro ao carregar lista');
      return null;
    }
  }
}
