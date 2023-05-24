import 'package:flutter_dotenv/flutter_dotenv.dart';

class APIConstants {
  APIConstants._();

  //api key and end point the The Movie Database
  static final String apiKey = dotenv.env["api_key"]!;
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String baseUrlImage = "https://image.tmdb.org/t/p/w500/";
  static const String movie = "movie";
  static const String trending = "trending";
}
