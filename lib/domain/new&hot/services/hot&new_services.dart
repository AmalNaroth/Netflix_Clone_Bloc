import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/everyone_watching_models.dart';
import 'package:netflix_clone/domain/new&hot/models/everyone_watching_models/result.dart';


abstract class HotandNewServices {
  Future<Either<MainFailure, HotandNewModel>> getComingSoonData();
  Future<Either<MainFailure, HotandNewModel>> getEveryOneWatchingData();
}
