import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure('Check your connection');
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if(statusCode==401) {
      return ServerFailure('Session Expired');}
    if (statusCode == 400 || statusCode == 403||statusCode==422) {
      return ServerFailure('${response['message'] ?? "Connection error"} ');

    } else if (statusCode == 404) {
      return ServerFailure(response['message']);}
    else if (statusCode == 405) {
      return ServerFailure(response['message'] ?? 'something went wrong');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure(response['message'] ?? 'Something went wrong');
    }
  }
}
