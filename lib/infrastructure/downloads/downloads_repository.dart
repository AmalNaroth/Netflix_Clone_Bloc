import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/i_downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads_models.dart';

@LazySingleton(as: IdownloadsRepo)
class DownloadsRepository implements IdownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadItems() async {
    try {
      final Response reponse = await Dio(
        BaseOptions(),
      ).get(ApiEndPoints.downloads);
      if (reponse.statusCode == 200 || reponse.statusCode == 201) {
        final downloadsList = (reponse.data['results'] as List).map(
          (e) {
            return Downloads.fromJson(e);
          },
        ).toList();

        return right(downloadsList);
      } else {
        return const Left(
          MainFailure.serverFailure(),
        );
      }
    } catch (e) {
      return const Left(
        MainFailure.clientFailure(),
      );
    }
  }
}
