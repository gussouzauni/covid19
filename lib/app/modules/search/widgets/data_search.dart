import 'package:api_rest1/app/modules/search/widgets/custom_result.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final cities = ['Itaperuna', 'Campos', 'Rio', 'São Paulo', 'Curitiba'];
  final recentCities = ['Itaperuna', 'Campos', 'Rio'];
  var city = '';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
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
      icon: Icon(Icons.arrow_back_ios),
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
          'https://www.teclasap.com.br/wp-content/uploads/2011/09/city-x-town.png',
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionsList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {},
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                "https://img.dicasdehoteis.net/2017/12/amsterdam-hoteis-baratos-848x350.jpg"),
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            size: 16,
          ),
          color: Color(0xff7159c1),
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
                        color: Color(0xff7159c1),
                        fontWeight: FontWeight.bold,
                        fontSize: 16))
              ]),
        ),
      ),
      itemCount: suggestionsList.length,
    );
  }
}
