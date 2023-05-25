// import 'package:dio/dio.dart';
// import 'package:task_manager/data/network/dio_factory.dart';
// import 'package:task_manager/data/request/post_request.dart';
// import 'package:task_manager/data/response/response.dart';

// abstract class RemoteDataSource {
//   Future<Response<DataResponse>> postDateResponse(PostRequest postRequest);
// }

// class RemoteDataSourceImplementer implements RemoteDataSource {
//   RemoteDataSourceImplementer(this._apiContainer);

//   final ApiContainer _apiContainer;

//   @override
//   Future<Response<DataResponse>> postDateResponse(PostRequest postRequest) {
//     return _apiContainer.post(
//       path: '/tasks',
//       parameters: postRequest.toMap(),
//     );
//   }
// }
