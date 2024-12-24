part of 'articles_cubit.dart';

sealed class ArticlesState {}

final class ArticlesInitial extends ArticlesState {}


final class GetArticlesLoading extends ArticlesState{}
final class GetArticlesSuccess extends ArticlesState{
  final String message;
  GetArticlesSuccess({required this.message});
}
final class GetArticlesError extends ArticlesState{
  final String error;
  GetArticlesError({required this.error});
}
final class SearchArticlesLoading extends ArticlesState{}
final class SearchArticlesSuccess extends ArticlesState{
  final String message;
  SearchArticlesSuccess({required this.message});
}
final class SearchArticlesError extends ArticlesState{
  final String error;
  SearchArticlesError({required this.error});
}
final class GetStickersLoading extends ArticlesState{}
final class GetStickersSuccess extends ArticlesState{
  final String message;
  GetStickersSuccess({required this.message});
}
final class GetStickersError extends ArticlesState{
  final String error;
  GetStickersError({required this.error});
}