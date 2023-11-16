import 'package:netflix_clone/core/api/api_doc.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads =
      "${baseUrl}movie/popular?api_key=$apiKey$commonEndUrl";

  static const search = "${baseUrl}search/movie?api_key=$apiKey&";

  static const comingSoon = "https://api.themoviedb.org/3/discover/movie?api_key=b7d1c1cf780d9b76cafd47071df61529&language=en-US&page=1if";
  static const everyoneWatching = "https://api.themoviedb.org/3/discover/tv?api_key=b7d1c1cf780d9b76cafd47071df61529&language=en-US&page=1if";
}
