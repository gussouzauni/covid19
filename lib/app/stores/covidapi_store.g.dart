// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covidapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CovidApiStore on _CovidApiStoreBase, Store {
  final _$covidApiAtom = Atom(name: '_CovidApiStoreBase.covidApi');

  @override
  CovidApi get covidApi {
    _$covidApiAtom.reportRead();
    return super.covidApi;
  }

  @override
  set covidApi(CovidApi value) {
    _$covidApiAtom.reportWrite(value, super.covidApi, () {
      super.covidApi = value;
    });
  }

  final _$_CovidApiStoreBaseActionController =
      ActionController(name: '_CovidApiStoreBase');

  @override
  dynamic fetchCovidList() {
    final _$actionInfo = _$_CovidApiStoreBaseActionController.startAction(
        name: '_CovidApiStoreBase.fetchCovidList');
    try {
      return super.fetchCovidList();
    } finally {
      _$_CovidApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
covidApi: ${covidApi}
    ''';
  }
}
