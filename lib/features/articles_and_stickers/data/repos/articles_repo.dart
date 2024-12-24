import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/failure/failure.dart';
abstract class ArticlesRepo{

  Future<Either<Failure,Response>>getArticles();
  Future<Either<Failure,Response>>getArticleDetails();
  Future<Either<Failure,Response>>getStickers();
  Future<Either<Failure,Response>>searchForArticles();

}