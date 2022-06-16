import 'package:dio/dio.dart';

// THứ 6 call API KO Được thì bị thẻ zàng

class DioClient {
// dio instance
  late final Dio _dio;
  final baseUrl = "https://vlg-api-reserve.azurewebsites.net";

  DioClient(){
   _dio = Dio(BaseOptions(
     baseUrl: baseUrl,
   ));
  }
  // Get:-----------------------------------------------------------------------
  Future<Response> getRequest(String endPoint) async{
    Response response;
    try {
      response = await _dio.get(endPoint);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response;

  }
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
