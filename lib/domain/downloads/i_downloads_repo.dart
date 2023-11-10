import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/models/downloads_models.dart';

abstract class IdownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadItems();
}
