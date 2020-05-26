import 'package:api_rest1/app/modules/search/widgets/custom_result.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final citiesCovid = ['Itaperuna', 'Campos', 'Rio', 'São Paulo', 'Curitiba'];
  final recentCities = [
    'Itaperuna',
    'Campos',
    'Rio',
    'Curitiba',
    'Rio grande do Sul'
  ];
  var city = '';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
          color: Color(0xff12a5c2),
        ),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // actions for app bar
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Color(0xff12a5c2),
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return CustomResult(
      text: city,
      image:
          'https://www.gov.br/pt-br/noticias/saude-e-vigilancia-sanitaria/2020/03/entenda-a-diferenca-entre-coronavirus-covid-19-e-novo-coronavirus/mitosis-3876669_1920.jpg/@@images/10852f76-0ff0-436b-8ab0-f9ed27b09f9e.png',
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionsList = query.isEmpty
        ? recentCities
        : citiesCovid.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {},
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: CircleAvatar(
            maxRadius: 25,
            backgroundImage: NetworkImage(
                "https://img.dicasdehoteis.net/2017/12/amsterdam-hoteis-baratos-848x350.jpg"),
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            size: 16,
          ),
          color: Color(0xff12a5c2),
          onPressed: () {
            city = (suggestionsList[index]);
            showResults(context);
          },
        ),
        title: RichText(
          text: TextSpan(
              text: suggestionsList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionsList[index].substring(query.length),
                    style: TextStyle(
                        color: Color(0xff12a5c2),
                        fontWeight: FontWeight.w600,
                        fontSize: 18))
              ]),
        ),
      ),
      itemCount: suggestionsList.length,
    );
  }
}
