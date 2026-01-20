// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_ce/hive_ce.dart';

import '../../injection_container.dart';
import '../context/global.dart';
import '../router/router_key.dart';
import '../services/hive/box_key.dart';
import '../widget/widget_dailog.dart';
import 'failure.dart';

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        return ServerFailure(message: 'Cancel Request');

      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection Time Out');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive Time Out');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response?.statusCode,
          message: dioException.response?.data.toString().contains('message') ?? true ? dioException.response?.data['message'] : dioException.response?.data.toString(),
        );

      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send Time Out');

      case DioExceptionType.connectionError:
        return ServerFailure(message: 'Socket Exception');

      default:
        return ServerFailure(message: 'Unknown Error');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, {String? message}) {
    String? token = sl<Box>(instanceName: BoxKey.appBox).get(BoxKey.token, defaultValue: '');
    switch (statusCode) {
      case 302:
        return ServerFailure(message: message ?? 'Unknown Error');
      case 400:
        return ServerFailure(message: message ?? 'Bad Request');
      case 401:
        if (token != '') {
          SmartDialog.show(
            clickMaskDismiss: false,
            backType: SmartBackType.block,
            builder: (context) => WidgetDilog(
              isError: true,
              title: 'Worning',
              message: 'Your Session Expired',
              cancelText: 'Login',
              onCancel: () {
                sl<Box>(instanceName: BoxKey.appBox).clear();
                SmartDialog.dismiss();
                GlobalContext.context.go(AppRoutes.login);
              },
            ),
          );
        }

        return ServerFailure(message: message ?? 'Unauthorized');
      case 403:
        return ServerFailure(message: message ?? 'Forbidden');
      case 404:
        return ServerFailure(message: message ?? 'Not Found');
      case 422:
        return ServerFailure(message: message ?? 'Duplicate Email');
      case 500:
        return ServerFailure(message: message ?? 'Internal Server Error');
      case 502:
        return ServerFailure(message: message ?? 'Bad Gateway');
      default:
        return ServerFailure(message: message ?? 'Unknown Error');
    }
  }

  @override
  String toString() => message;
}

class ServiceSuccess extends Success {
  ServiceSuccess({required super.message});

  @override
  String toString() => message;
}
