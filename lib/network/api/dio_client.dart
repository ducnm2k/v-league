import 'package:dio/dio.dart';

// // THứ 6 call API KO Được thì bị thẻ zàng
  class DioClient {
  Dio configDio() {
    var options = BaseOptions(
      baseUrl: 'https://vlg-api-reserve.azurewebsites.net',
      // connectTimeout: 3000,
      // receiveTimeout: 3000,
    );
    final dio = Dio(options);
    //AppPreference appPreferences = AppPreference();
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      //String token = await appPreferences.getToken();
      // if (token != '') {
      //   options.headers[Label.authorization] = 'Bearer ' + token;
      // }
      return handler.next(options);
    }, onResponse: (response, handler) {
      // Do something with response data
      return handler.next(response); // continue
      // If you want to reject the request with a error message,
      // you can reject a DioError object eg: handler.reject(dioError)
    }, onError: (DioError e, handler) {
      // Do something with response error
      return handler.next(e); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a Response object eg: handler.resolve(response).
    }));
    return dio;
    
  }
  Dio get getDio => configDio();
//
// // Put:-----------------------------------------------------------------------
//   Future<Response> put(
//       String url, {
//         data,
//         Map<String, dynamic>? queryParameters,
//         Options? options,
//         CancelToken? cancelToken,
//         ProgressCallback? onSendProgress,
//         ProgressCallback? onReceiveProgress,
//       }) async {
//     try {
//       final Response response = await _dio.put(
//         url,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//         onSendProgress: onSendProgress,
//         onReceiveProgress: onReceiveProgress,
//       );
//       return response;
//     } catch (e) {
//       rethrow;
//     }
//   }
// // Delete:--------------------------------------------------------------------
//   Future<dynamic> delete(
//       String url, {
//         data,
//         Map<String, dynamic>? queryParameters,
//         Options? options,
//         CancelToken? cancelToken,
//         ProgressCallback? onSendProgress,
//         ProgressCallback? onReceiveProgress,
//       }) async {
//     try {
//       final Response response = await _dio.delete(
//         url,
//         data: data,
//         queryParameters: queryParameters,
//         options: options,
//         cancelToken: cancelToken,
//       );
//       return response.data;
//     } catch (e) {
//       rethrow;
//     }
//   }

  }
