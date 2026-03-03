import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}
class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromdioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          errorMessage: 'Connection Timeoute with Api server',
        );

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send Timeoute with Api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive Timeoute with Api server');
      case DioExceptionType.badCertificate:
        return ServerFailure(
          errorMessage: 'badCertificate Timeoute with Api server',
        );

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.data,
          dioError.response!.statusCode!,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request to apiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure(
          errorMessage: 'Opps ther was an Error ,please try again',
        );
    }
  }
  factory ServerFailure.fromResponse(dynamic response, int statusCode) {
    if (statusCode == 404) {
      return ServerFailure(
        errorMessage: 'Your Request Not Found please Try Later',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        errorMessage: 'Ther is Problem with server,Please try Later',
      );
    } else if (statusCode == 401 || statusCode == 403 || statusCode == 400) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else {
      return ServerFailure(
        errorMessage: 'Opps there was an Error ,please try again',
      );
    }
  }
}