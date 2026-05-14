import 'dart:convert';

import 'package:flutter_beachup/models/club.dart';
import 'package:http/http.dart' as http;

class ClubService {
  final String baseUrl =
      "https://mocki.io/v1/5368bd01-5991-4a55-a091-d3370b2875b0";

  Future<List<Club>> getClubs() async {
    try {
      var response = await http.get(
        Uri.parse(baseUrl),
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode >= 200 && response.statusCode < 400) {
        List<dynamic> jsonResponse = jsonDecode(response.body);

        List<Club> result = jsonResponse.map((jsonClub) {
          Map<String, dynamic> value = jsonClub as Map<String, dynamic>;

          return Club(
            name: value['name'],
            location: value['location'],
            cover: value['cover'],
            price: 0,
            state: value['state'],
            urlImage: value['urlImage'],
          );
        }).toList();

        return result;
      } else {
        throw Exception("Requisição mal sucedida!");
      }
    } catch (e) {
      throw Exception("Requisição mal sucedida!");
    }
  }
}
