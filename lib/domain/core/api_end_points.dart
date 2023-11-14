import 'package:netflix_clone/core/api/api_doc.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads =
      "${baseUrl}movie/popular?api_key=$apiKey$commonEndUrl";

  static const search = "${baseUrl}search/movie?api_key=$apiKey&";
}
