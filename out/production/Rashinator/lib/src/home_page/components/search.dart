import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  // Demo list to show querying
  List<String> searchTerms = [
    "Moneky Pox",
    "Nevus",
    "Actinic Keratosis",
    "Basal Cell Carcinoma",
    "Dermatofibroma",
    "Melanoma",
    "Pigmented Benign Keratosis",
    "Seborrheic Keratosis",
    "Squamous Cell Carcinoma",
    "Vascular Lesion",
    "Lyme Disease",
    "Acne and Rosacea",
    "Bacterial Infections",
    "Eczema",
    "Vasculitis",
    "Viral Infections and Warts",
    "Sebaceous Hyperplasia"
  ];
  List<String> definitions = [
    "Moneky Pox is a poo poo",
    "Nevus smells like freevus",
    "Actinic Keratosis",
    "Basal Cell Carcinoma",
    "Dermatofibroma",
    "Melanoma",
    "Pigmented Benign Keratosis",
    "Seborrheic Keratosis",
    "Squamous Cell Carcinoma",
    "Vascular Lesion",
    "Lyme Disease",
    "Acne and Rosacea",
    "Bacterial Infections",
    "Eczema",
    "Vasculitis",
    "Viral Infections and Warts",
    "Sebaceous Hyperplasia"
  ];
  // first overwrite to
  // clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var disease in searchTerms) {
      if (disease.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(disease);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var disease in searchTerms) {
      if (disease.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(disease);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
