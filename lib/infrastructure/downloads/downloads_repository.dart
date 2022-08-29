import 'package:dio/dio.dart';
import 'package:netflix/domain/core/api_end_points.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/downlods/i_downloads_repo.dart';
import 'package:netflix/domain/downlods/models/downloads_model.dart';

class DownloadsRepository implements IDownloadRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<Downloads> downloadList = [];
        for (final item in response.data) {
          downloadList.add(
            Downloads.fromJson(
              item as Map<String, dynamic>,
            ),
          );
        }
        return right(downloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
