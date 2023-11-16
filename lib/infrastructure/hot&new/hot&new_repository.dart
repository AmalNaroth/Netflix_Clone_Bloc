import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/everyone_watching_models.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/result.dart';
import 'package:netflix_clone/domain/new&hot/services/hot&new_services.dart';

@LazySingleton(as: HotandNewServices)
class HotandNewRepository implements HotandNewServices {
  @override
  Future<Either<MainFailure, HotandNewModel>> getComingSoonData() async {
    try {
      final Response reponse = await Dio(
        BaseOptions(),
      ).get(
        ApiEndPoints.comingSoon,
      );
      if (reponse.statusCode == 200 || reponse.statusCode == 201) {
        final reponseResult = HotandNewModel.fromJson(reponse.data);
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

  @override
  Future<Either<MainFailure, HotandNewModel>> getEveryOneWatchingData() async {
    try {
      final Response reponse = await Dio(
        BaseOptions(),
      ).get(
        ApiEndPoints.everyoneWatching,
      );
      if (reponse.statusCode == 200 || reponse.statusCode == 201) {
        final reponseResult = HotandNewModel.fromJson(reponse.data);
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
