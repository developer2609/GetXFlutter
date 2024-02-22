// To parse this JSON data, do
//
//     final joke = jokeFromJson(jsonString);

import 'dart:convert';

class Joke {
  String type;
  String setup;
  String punchline;
  int id;

  Joke({
    required this.type,
    required this.setup,
    required this.punchline,
    required this.id,
  });

  factory Joke.fromJson(Map<String,dynamic> json) => Joke(
    type: json["type"]??'',
    setup: json["setup"],
    punchline: json["punchline"],
    id: json["id"],
  );

}

