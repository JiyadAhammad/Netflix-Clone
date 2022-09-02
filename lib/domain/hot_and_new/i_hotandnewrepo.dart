import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/hot_and_new/model/hot_and_new.dart';

abstract class IHotAndNewRepo{
  Future<Either<MainFailure,HotAndNewData>> getHotsndNewMovieData();
  Future<Either<MainFailure,HotAndNewData>> getHotsndNewTvData();
}