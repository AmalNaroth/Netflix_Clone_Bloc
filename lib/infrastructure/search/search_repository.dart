import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/search/models/search_response/search_response.dart';
import 'package:netflix_clone/domain/search/search_services/search_service.dart';

@LazySingleton(as: SearchServices)
class SearchRepository implements SearchServices {
  @override
  Future<Either<MainFailure, SearchResponse>> getSearchItems(
      {required String moveNameQuery}) async {
    try {
      final Response reponse = await Dio(
        BaseOptions(),
      ).get(
        ApiEndPoints.search,
        queryParameters: {"query": moveNameQuery},
      );
      if (reponse.statusCode == 200 || reponse.statusCode == 201) {
        final reponseResult = SearchResponse.fromJson(reponse.data);
        return right(reponseResult);
      } else {
        return left(
          const MainFailure.serverFailure(),
        );
      }
    } catch (e) {
      return left(
        const MainFailure.serverFailure(),
      );
    }
  }
}
