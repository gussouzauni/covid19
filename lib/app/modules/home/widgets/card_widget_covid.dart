import 'package:api_rest1/app/consts/icons.dart';
import 'package:api_rest1/app/models/covidapi.dart';
import 'package:api_rest1/app/modules/home/widgets/show_dialog.dart';
import 'package:api_rest1/app/stores/covidapi_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CardWidgetSvg extends StatefulWidget {
  @override
  _CardWidgetSvgState createState() => _CardWidgetSvgState();
}

class _CardWidgetSvgState extends State<CardWidgetSvg> {
  CovidApiStore _covidApiStore;
  ShowDialog _showDialog;

  @override
  void initState() {
    super.initState();
    _showDialog = ShowDialog();
    _covidApiStore = CovidApiStore();
    _covidApiStore.fetchCovidList();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
        name: 'ListCovid',
        builder: (BuildContext context) {
          CovidApi _covidApi = _covidApiStore.covidApi;
          return (_covidApi != null)
              ? ListView.builder(
                  itemCount: _covidApi.covid.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _showDialog.createAlertDialog(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 4),
                        child: Container(
                          width: 120,
                          height: 50,
                          decoration: new BoxDecoration(
                              color: Color(0xff12a5c2),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(IconsApp.iconFour),
                              ),
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 30,
                                height: 30,
                                child: Image.asset(IconsApp.iconOne),
                              ),
                              RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: _covidApi.covid[index].uf +
                                            '\n' +
                                            _covidApi.covid[index].cases
                                                .toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20)),
                                  ])),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        });
  }
}
