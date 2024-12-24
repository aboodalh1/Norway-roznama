import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:norway_roznama/core/failure/failure.dart';
import 'package:norway_roznama/core/util/api_service.dart';
import 'package:norway_roznama/features/articles_and_stickers/data/repos/articles_repo.dart';

class ArticlesRepoImpl implements ArticlesRepo{
  ArticlesRepoImpl(this.dioHelper);
  DioHelper dioHelper;
  @override
  Future<Either<Failure, Response>> getArticleDetails() async{
    try{
    var response = await dioHelper.getData(endPoint: 'endPoint');
    return right(response.data);
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Response>> getArticles() async{
    try{
      var response = await dioHelper.getData(endPoint: 'endPoint');
      return right(response.data);
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Response>> getStickers() async{
    try{
      var response = await dioHelper.getData(endPoint: 'endPoint');
      return right(response.data);
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Response>> searchForArticles() async{
    try{
      var response = await dioHelper.getData(endPoint: 'endPoint');
      return right(response.data);
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}